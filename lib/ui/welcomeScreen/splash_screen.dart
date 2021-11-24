import 'dart:async';

import 'package:car_app/ui/welcomeScreen/get_started.dart';
import 'package:car_app/utils/colors.dart';
import 'package:car_app/utils/routes.dart';
import 'package:car_app/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();

    super.initState();
    Timer(Duration(seconds: 4), () {
      AppRoutes.push(context, GetStarted());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primery_color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: AppColors.primery_color,
              child: Image.asset("assets/images/main_logo.png"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h),
              child: Text("Your QUINTESSENTIAL AUTO GARAGE".toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600)),
            )
          ],
        ),
      ),
    );
  }
}
