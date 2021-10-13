
import 'package:car_app/ui/home/home_screen_2/components/car_info_card.dart';
import 'package:car_app/widgets/habib.dart';
import 'package:car_app/widgets/navbar.dart';
import 'package:car_app/widgets/phone.dart';
import 'package:car_app/widgets/titlebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/services.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            //bottomNavigationBar: NavBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 33.w),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 25.h),
                        TitleBar(),
                        BelowTitle(),
                        SizedBox(height: 19.h),
                        CarinfoCard(),
                        SizedBox(height: 43.h),
                        ServicesRow(),
                        SizedBox(height: 38.h),
                        ServicesList(),
                        PhoneButton()
                      ]),
                ))));
  }
}
