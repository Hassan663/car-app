import 'package:car_app/ui/home/appointment_screen/appointment_screen.dart';
import 'package:car_app/ui/visit_detail/model.dart';
import 'package:car_app/widgets/buttons.dart';
import 'package:car_app/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:car_app/translations/locale_keys.g.dart';
import 'package:easy_localization/src/public_ext.dart';

class VisitDetail extends StatelessWidget {
  const VisitDetail({Key? key}) : super(key: key);

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
            body: Container(
              height: 900.h,
              child: Stack(children: [
                Positioned(
                    child: Image(
                        width: width,
                        image: AssetImage(
                          'assets/images/ellipse.png',
                        ))),
                Positioned(
                    top: 38.h,
                    left: 33.w,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.chevron_left,
                          size: 32.sp,
                        ))),
                Positioned(top: 74.h, left: 33.w, child: Logo()),
                Positioned(
                    top: 174.h,
                    left: 33.w,
                    child: Container(
                      height: 660.h,
                      width: 347,
                      child: ListView.builder(
                        itemCount: VisitModel.data.length,
                        itemBuilder: (BuildContext context, int index) =>
                            SizedBox(
                          height: 660.h,
                          width: 347.w,
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15.0, right: 15),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 13.h,
                                    ),
                                    Text(
                                      LocaleKeys.Visit_Detail.tr(),
                                      style: GoogleFonts.openSans(
                                          fontSize: 25.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 26.h,
                                    ),
                                    VisitRow(
                                      Trailing:
                                          VisitModel.data[index].delivered_date,
                                      title: VisitModel.data[index].delivered,
                                    ),
                                    VerticalDiv(),
                                    VisitRow(
                                      Trailing:
                                          VisitModel.data[index].pickup_date,
                                      title: VisitModel.data[index].pickup,
                                    ),
                                    VerticalDiv(),
                                    VisitRow(
                                      Trailing:
                                          VisitModel.data[index].Section_date,
                                      title: VisitModel.data[index].Section,
                                    ),
                                    VerticalDiv(),
                                    VisitRow(
                                      Trailing:
                                          VisitModel.data[index].progress_date,
                                      title: VisitModel.data[index].progress,
                                    ),
                                    VerticalDiv(),
                                    VisitRow(
                                      Trailing:
                                          VisitModel.data[index].Approved_date,
                                      title: VisitModel.data[index].Approved,
                                    ),
                                    VerticalDiv(),
                                    VisitRow(
                                      Trailing:
                                          VisitModel.data[index].claim_date,
                                      title: VisitModel.data[index].claim,
                                    ),
                                    VerticalDiv(),
                                    VisitRow(
                                      Trailing:
                                          VisitModel.data[index].Arrived_date,
                                      title: VisitModel.data[index].Arrived,
                                    ),
                                    VerticalDiv(),
                                    VisitRow(
                                      Trailing:
                                          VisitModel.data[index].Received_date,
                                      title: VisitModel.data[index].Received,
                                    ),
                                    // Row(
                                    //   children: [
                                    //     Spacer(),
                                    //     FloatingActionButton(
                                    //       child: Image.asset('assets/images/phone.png'),
                                    //       onPressed: () {},
                                    //       backgroundColor: Color(0xffF48129),
                                    //     ),
                                    //   ],
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
              ]),
            )));
  }
}

class VerticalDiv extends StatelessWidget {
  const VerticalDiv({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 3,
              height: 30.h,
              color: Color(0xffF48129),
            ),
          ),
        ),
      ],
    );
  }
}

class VisitRow extends StatelessWidget {
  final String title;
  final String Trailing;
  const VisitRow({
    required this.title,
    required this.Trailing,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.check_circle_outline,
          size: 35,
          color: Color(0xffF48129),
        ),
        SizedBox(
          width: 15.w,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(title,
              overflow: TextOverflow.clip,
              softWrap: true,
              style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.w600,
              )),
        ),
        Spacer(),
        Icon(
          Icons.calendar_today_outlined,
          color: Color(0xffF48129),
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          Trailing,
          style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xffF48129)),
        )
      ],
    );
  }
}
