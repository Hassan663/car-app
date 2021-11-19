import 'package:car_app/translations/locale_keys.g.dart';
import 'package:car_app/ui/home/home_screen/model/model.dart';
import 'package:car_app/ui/home/home_screen_2/model/model.dart';
import 'package:car_app/ui/visit_detail/visit_detail.dart';
import 'package:car_app/utils/dashbordModel.dart';
import 'package:car_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:car_app/translations/locale_keys.g.dart';
import 'package:easy_localization/src/public_ext.dart';

class HistoryCard extends StatelessWidget {
  final String carid;
  final String cusid;
  const HistoryCard({
    Key? key,
    required this.carid,
    required this.cusid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      child: ListView.builder(
        itemCount: DashBordModel.carVisitModel!.allVechileVisits.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: (Column(
              children: [
                Center(
                  child: ListTile(
                      title: Text(CarData.data[index].title,
                          style: GoogleFonts.openSans(
                              color: Color(0xff414141),
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w600)),
                      subtitle: Text(
                        CarData.data[index].subtitle,
                        style: GoogleFonts.openSans(
                            color: Color(0xff838383),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      )),
                ),
                Container(
                  color: Color(0xffF8EDDC),
                  width: 347.w,
                  child: Column(
                    children: [
                      CardTiles(
                        image: "assets/images/1.png",
                        title: LocaleKeys.Arrival_Date.tr(),
                        subtitle: DashBordModel
                            .carVisitModel!.allVechileVisits[index].arrivalDate
                            .toString(),
                        color: Color(0xffF48129),
                      ),
                      CardTiles(
                        image: "assets/images/Group 97.png",
                        title: LocaleKeys.Promise_Date.tr(),
                        subtitle: DashBordModel
                            .carVisitModel!.allVechileVisits[index].promisedDate
                            .toString(),
                        color: Color(0xffF48129),
                      ),
                      CardTiles(
                        image: "assets/images/1.png",
                        title: LocaleKeys.Delivery_Date.tr(),
                        subtitle: DashBordModel
                            .carVisitModel!.allVechileVisits[index].deliveryDate
                            .toString(),
                        color: Color(0xffF48129),
                      ),
                      CardTiles(
                        image: "assets/images/1.png",
                        title: LocaleKeys.Insurance.tr(),
                        subtitle: DashBordModel
                            .carVisitModel!.allVechileVisits[index].insurance,
                        color: Color(0xffF48129),
                      ),
                      CardTiles(
                        image: "assets/images/Group 97.png",
                        title: LocaleKeys.Task.tr(),
                        subtitle: DashBordModel
                            .carVisitModel!.allVechileVisits[index].task,
                        color: Color(0xffF48129),
                      ),
                      CardTiles(
                        image: "assets/images/Group 98.png",
                        title: LocaleKeys.Status.tr(),
                        subtitle: DashBordModel
                            .carVisitModel!.allVechileVisits[index].status,
                        color: Color(0xffF48129),
                      ),
                      SizedBox(
                        height: 21.h,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Spacer(),
                    CustomButton(
                      tap: () => AppRoutes.push(
                          context,
                          VisitDetail(
                            cusid: cusid,
                            carid: carid,
                          )),
                    ),
                  ],
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback tap;
  const CustomButton({
    required this.tap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        child: Icon(
          Icons.arrow_forward_outlined,
          color: Color(0xffFFFFFF),
        ),
        height: 36.h,
        width: 94.h,
        decoration: BoxDecoration(
            color: Color(0xffF48129),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0))),
      ),
    );
  }
}

class CardTiles extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final Color color;

  const CardTiles({
    required this.color,
    required this.image,
    required this.subtitle,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 33.h,
      child: ListTile(
        minLeadingWidth: 12.85.w,
        leading: Image.asset(image),
        title: Text(
          title,
          style: GoogleFonts.openSans(
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xff000000)),
        ),
        trailing: Text(subtitle,
            style: GoogleFonts.openSans(
                fontSize: 17.sp, fontWeight: FontWeight.w600, color: color)),
      ),
    );
  }
}
