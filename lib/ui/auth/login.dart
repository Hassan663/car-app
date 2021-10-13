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

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var Request_for_your_password_Click_Here;
    return Scaffold(
      backgroundColor: AppColors.white_color,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60.h,
            ),
            Center(
              child: Image.asset("assets/images/sub_logo.png"),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              LocaleKeys.Customer_Login.tr(),
              style: largeGreyText,
            ),
            SizedBox(
              height: 60.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: TextFields.normalTextField(context,
                  labelText: LocaleKeys.Email.tr(),
                  color: AppColors.white_color,
                  hintText: "Email Address"),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: TextFields.normalTextField(context,
                  labelText: LocaleKeys.Password.tr(),
                  color: AppColors.white_color,
                  hintText: "Password"),
            ),
            SizedBox(
              height: 38.h,
            ),
            CircularButtons(
                height: height * 0.06,
                width: 210.w,
                text: LocaleKeys.Log_In.tr(),
                textStyle: smallWhiteText,
                onPressed: () {
                  print("object");
                  AppRoutes.push(context, BottomBar());
                },
                backgroundColor: AppColors.yellow_color,
                textColor: AppColors.white_color,
                borderColor: AppColors.yellow_color),
            SizedBox(
              height: 30.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LocaleKeys.Request_for_your_password.tr(),
                  style: subtitleGreyText,
                ),
                SizedBox(
                  width: 4.w,
                ),
                InkWell(
                  child: Text(
                    LocaleKeys.Click_Here.tr(),
                    style: subtitleYellowText,
                  ),
                  onTap: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


