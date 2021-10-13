
import 'package:car_app/ui/home/home_screen_2/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesRow extends StatelessWidget {
  const ServicesRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 33.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Choose Services',
            style: GoogleFonts.openSans(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          Text('View All',
              style: GoogleFonts.openSans(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff838383)))
        ],
      ),
    );
  }
}

class ServiceButton extends StatelessWidget {
  const ServiceButton({
    required this.index,
    Key? key,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 84.0,
        height: 125.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(44),
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                color: Color(0xffF48129).withOpacity(0.5),
                spreadRadius: 1.5,
                blurRadius: 7,
                offset: Offset(0, 6), // changes position of shadow
              ),
            ],
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Services.service[index].icon),
            Text(
              Services.service[index].name,
              style: GoogleFonts.openSans(fontSize: 13.sp, fontWeight: FontWeight.w600),
            ),
          ],
        ));
  }
}

class ServicesList extends StatelessWidget {
  const ServicesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 111.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Services.service.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(right: 18.w, left: 8, bottom: 8.h),
              child: ServiceButton(
                index: index,
              ),
            );
          }),
    );
  }
}
