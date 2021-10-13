import 'package:car_app/utils/colors.dart';
import 'package:car_app/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:car_app/translations/locale_keys.g.dart';
class Warning extends StatelessWidget {
  const Warning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffF8EDDC).withOpacity(0.8),
      body: Center(
        child: Container(
          height: height * 0.35,
          width: width * 0.90,
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Icon(
                Icons.warning,
                size: 40.sp,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                LocaleKeys.Disclaimer.tr(),
                style: largeBlackText,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                LocaleKeys.All_logos_and_brands_are_property_of_their_respective_owners_Logos_and_brand_used_in_thi_pplication_are_for_identification_purposes_only_Use_of_these_logos_and_brands_does_not_imply_endorsement.tr(),
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.light_grey_color),
              ),
            ],
          ),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 5,
                  blurRadius: 7,
                  //offset: Offset(0, 6), // changes position of shadow
                ),
              ],
              color: AppColors.white_color,
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
