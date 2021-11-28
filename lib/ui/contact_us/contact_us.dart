import 'package:car_app/utils/colors.dart';
import 'package:car_app/utils/routes.dart';
import 'package:car_app/utils/text_style.dart';
import 'package:car_app/widgets/buttons.dart';
import 'package:car_app/widgets/bottom_bar.dart';
import 'package:car_app/widgets/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:car_app/translations/locale_keys.g.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
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
      backgroundColor: AppColors.white_color,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Center(
                child: Container(height: 200.sp, child: Image.asset("assets/images/sub_logo.png")),
              ),
              Text(
                LocaleKeys.Contact_Us.tr(),
                style: largeGreyText,
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 50.w),
                child: TextFields.normalTextField(
                  context,
                  labelText: LocaleKeys.Name.tr(),
                  color: AppColors.white_color,
                  hintText: LocaleKeys.Name.tr(),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 50.w),
                child: TextFields.normalTextField(
                  context,
                  labelText: LocaleKeys.Phone.tr(),
                  color: AppColors.white_color,
                  hintText: LocaleKeys.Phone.tr(),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 50.w),
                child: TextFields.normalTextField(
                  context,
                  labelText: "Email",
                  color: AppColors.white_color,
                  hintText: "Email",
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 50.w),
                child: TextFields.normalTextField(
                  context,
                  maxLength: 10,
                  labelText: LocaleKeys.Comment.tr(),
                  color: AppColors.white_color,
                  hintText: LocaleKeys.Comment.tr(),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              CircularButtons(
                  height: height * 0.074,
                  width: 210.w,
                  text: LocaleKeys.Send.tr(),
                  textStyle: smallWhiteText,
                  onPressed: () {
                    AppRoutes.push(context, BottomBar());
                  },
                  backgroundColor: AppColors.yellow_color,
                  textColor: AppColors.white_color,
                  borderColor: AppColors.yellow_color),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
