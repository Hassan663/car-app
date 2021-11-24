import 'package:car_app/translations/locale_keys.g.dart';
import 'package:car_app/ui/home/home_screen/constants.dart';
import 'package:car_app/utils/dashbordModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/src/public_ext.dart';

class BelowTitle extends StatelessWidget {
  const BelowTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 32.h),
        Text(
          "Hi, ${DashBordModel.customerData?.name}",
          style: kStylingHeader,
        ),
        // SizedBox(height: 10.h),
        SizedBox(height: 31.h),
        Padding(
            padding: EdgeInsets.only(right: 22.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child:
                          Text(LocaleKeys.My_Vehicals.tr(), style: kVehicle)),
                  // Text(LocaleKeys.View_All.tr(), style: kView)
                ])),
      ],
    );
  }
}
