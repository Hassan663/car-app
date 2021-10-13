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
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.white_color,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Center(child: Image.asset("assets/images/sub_logo.png")),
            Center(child: Image.asset("assets/images/boarding_screen.png")),
            SizedBox(
              height: 30.h,
            ),
            Text(
              LocaleKeys.Welcome_to_Apex_Auto_Garage.tr(),
              style: welcomeText,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              LocaleKeys
                      .We_Have_made_it_easier_than_ever_for_you_to_keep_tabs_on_your_vehicles_repair_status
                  .tr(),
              textAlign: TextAlign.center,
              style: smallGreyText,
            ),
            SizedBox(
              height: 60.h,
            ),
            CircularButtons(
                height: height * 0.06,
                width: 210.w,
                text: LocaleKeys.Get_Started.tr(),
                textStyle: smallWhiteText,
                onPressed: () {
                  AppRoutes.push(context, Login());
                },
                backgroundColor: AppColors.yellow_color,
                textColor: AppColors.white_color,
                borderColor: AppColors.yellow_color)
          ],
        ),
      ),
    );
  }
}
