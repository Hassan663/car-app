import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:car_app/model/car_visit_model.dart';
import 'package:car_app/model/profile_model.dart';
import 'package:car_app/provider/car_provider.dart';
import 'package:car_app/translations/locale_keys.g.dart';
import 'package:car_app/translations/locale_keys.g.dart';
import 'package:car_app/widgets/buttons.dart';
import 'package:car_app/widgets/history_card.dart';
import 'package:car_app/widgets/navbar.dart';

class AppointmenScreen extends StatefulWidget {
  final Vechile vehicle;
  final String custid;
  const AppointmenScreen({
    Key? key,
    required this.vehicle,
    required this.custid,
  }) : super(key: key);

  @override
  _AppointmenScreenState createState() => _AppointmenScreenState();
}

class _AppointmenScreenState extends State<AppointmenScreen> {
  bool isfound = true;
  CarVisitModel? carVisitModel;
  @override
  void initState() {
    getHistoryOfVehicle();
    super.initState();
  }

  getHistoryOfVehicle() {
    Provider.of<CarDatileProvider>(context, listen: false)
        .fetchVehicle(
          widget.custid,
          widget.vehicle.carId,
        )
        .then((value) => {
              print(value!.msg.toString()),
              setState(() {
                carVisitModel = value;
                isfound = false;
              })
            });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: FloatingButton1(),
            ),
            FloatingButton(),
          ],
        ),
        //bottomNavigationBar: NavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 289.h,
                child: Stack(children: [
                  Positioned(
                      child: Image(
                          fit: BoxFit.cover,
                          width: width,
                          image: AssetImage('assets/images/ellipse.png'))),
                  Positioned(
                      top: 58.h,
                      left: 33.w,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chevron_left,
                            size: 32.sp,
                          ))),
                  Positioned(
                      top: 97.h,
                      left: 33.w,
                      child: Logo(
                        vechile: widget.vehicle,
                      )),
                  Positioned(
                      top: 174.h,
                      left: 207.h,
                      height: 115.h,
                      child: Image.network(widget.vehicle
                          .carModelImage)), //Image(image: AssetImage('assets/images/car.png')))
                ]),
              ),
              SizedBox(height: 24.h),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 33.w),
                  child: Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        LocaleKeys.Appointment_History.tr(),
                        style: GoogleFonts.openSans(
                          color: Color(0xff414141),
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        LocaleKeys.Visits.tr(),
                        style: GoogleFonts.openSans(
                          color: Color(0xff414141),
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    isfound
                        ? Container(
                            child: CircularProgressIndicator(),
                          )
                        : Stack(children: [
                            HistoryCard(cusid:widget.custid,carid:widget.vehicle.carId),
                          ])
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  final Vechile vechile;
  const Logo({
    Key? key,
    required this.vechile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.h),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Row(
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.network(vechile.carMakeLogo),
              ),
              // Image.asset('assets/images/logo1.png'),
              SizedBox(width: 12.w),
              Text(vechile.carMakeName,
                  style: GoogleFonts.openSans(
                    color: Color(0xff414141),
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600,
                  )),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 65.w,
            ),
            child: Text(vechile.carModelName,
                style: GoogleFonts.openSans(
                  color: Color(0xff838383),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                )),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 65.w),
            child: Text(vechile.plateNo,
                style: GoogleFonts.openSans(
                  color: Color(0xff838383),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                )),
          )
        ]),
      ),
      // child: ListTile(
      //   leading: Image(image: AssetImage('assets/images/logo.png')),
      //   title: Text(
      //     'Lamborghini',
      //     style: TextStyle(
      //         color: Color(0xff414141),
      //         fontSize: 25.sp,
      //         fontWeight: FontWeight.w700),
      //   ),
      //   subtitle: Text('Centenario',
      //       style: TextStyle(
      //           color: Color(0xff838383),
      //           fontSize: 18.sp,
      //           fontWeight: FontWeight.w400)),
      // ),
    );
  }
}
