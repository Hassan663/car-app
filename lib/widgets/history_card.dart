import 'package:car_app/translations/locale_keys.g.dart';
import 'package:car_app/ui/home/home_screen/model/model.dart';
import 'package:car_app/ui/home/home_screen_2/model/model.dart';
import 'package:car_app/ui/visit_detail/visit_detail.dart';
import 'package:car_app/utils/dashbordModel.dart';
import 'package:car_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      height: 500.h,
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
                      title: Text(
                          "Visit On : " +
                              convert(DashBordModel.carVisitModel!
                                  .allVechileVisits[index].arrivalDate),
                          style: GoogleFonts.openSans(
                              color: Color(0xff414141),
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w600)),
                      subtitle: Text(
                        "",
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
                        iconData: Icons.calendar_today,
                        title: LocaleKeys.Arrival_Date.tr(),
                        subtitle: convert(DashBordModel.carVisitModel!
                            .allVechileVisits[index].arrivalDate),
                        color: Color(0xffF48129),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CardTiles(
                        iconData: Icons.calendar_today,
                        title: LocaleKeys.Promise_Date.tr(),
                        subtitle: convert(DashBordModel.carVisitModel!
                            .allVechileVisits[index].promisedDate),
                        color: Color(0xffF48129),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CardTiles(
                        iconData: Icons.calendar_today,
                        title: LocaleKeys.Delivery_Date.tr(),
                        subtitle: convert(DashBordModel.carVisitModel!
                            .allVechileVisits[index].deliveryDate),
                        color: Color(0xffF48129),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CardTiles(
                        iconData: Icons.description,
                        title: LocaleKeys.Insurance.tr(),
                        subtitle: DashBordModel
                            .carVisitModel!.allVechileVisits[index].insurance,
                        color: Color(0xffF48129),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CardTiles(
                        iconData: Icons.task,
                        title: LocaleKeys.Task.tr(),
                        subtitle: DashBordModel
                            .carVisitModel!.allVechileVisits[index].task,
                        color: Color(0xffF48129),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CardTiles(
                        iconData: FontAwesomeIcons.tasks,
                        title: LocaleKeys.Status.tr(),
                        subtitle: DashBordModel
                            .carVisitModel!.allVechileVisits[index].status,
                        color: Color(0xffF48129),
                      ),
                      SizedBox(
                        height: 40.h,
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

  String convert(DateTime d) {
    return "${d.year.toString()}-${d.month.toString()}-${d.day.toString()}";
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
  final IconData iconData;
  final String title;
  final String subtitle;
  final Color color;

  const CardTiles({
    required this.color,
    required this.iconData,
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
        leading: Icon(iconData,),
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
