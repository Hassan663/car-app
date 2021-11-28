import 'package:car_app/translations/locale_keys.g.dart';
import 'package:car_app/ui/auth/login.dart';
import 'package:car_app/utils/colors.dart';
import 'package:car_app/utils/routes.dart';
import 'package:car_app/utils/text_style.dart';
import 'package:car_app/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:car_app/translations/locale_keys.g.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      // Color(0xffFDFEFE),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Center(child: Container( height: 250.sp,child: Image.asset("assets/images/sub_logo.png"))),
            Center(child: Container(height: 200.sp, child: Image.asset("assets/images/boarding_screen.png"))),
            SizedBox(
              height: 70.h,
            ),
            Text(
              LocaleKeys.Welcome_to_Apex_Auto_Garage.tr(),
              style: TextStyle(
                  color: Color(0xff414141),
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.w),
              child: Text(
                LocaleKeys
                        .We_Have_made_it_easier_than_ever_for_you_to_keep_tabs_on_your_vehicles_repair_status
                    .tr(),
                textAlign: TextAlign.center,
                style: smallGreyText,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            CircularButtons(
                height: height * 0.06,
                width: 180.w,
                text: LocaleKeys.Get_Started.tr(),
                textStyle: smallWhiteText,
                onPressed: () {
                  AppRoutes.push(context, Login());
                },
                backgroundColor: AppColors.yellow_color,
                textColor: Colors.white,
                borderColor: AppColors.yellow_color)
          ],
        ),
      ),
    );
  }
}
