import 'package:car_app/translations/locale_keys.g.dart';
import 'package:car_app/utils/colors.dart';
import 'package:car_app/utils/routes.dart';
import 'package:car_app/utils/text_style.dart';
import 'package:car_app/widgets/buttons.dart';
import 'package:car_app/widgets/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40.h),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      AppRoutes.pop(context);
                    },
                    icon: Icon(
                      Icons.chevron_left,
                      color: AppColors.yellow_color,
                      size: 30,
                    ),
                  ),
                ),
              ),
              Center(
                child: Image.asset("assets/images/sub_logo.png"),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Reset Password",
                style: largeGreyText,
              ),
              SizedBox(
                height: 60.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: TextFields.normalTextField(context,
                    labelText: "User Name",
                    // controller: _contactController,
                    color: AppColors.white_color,
                    hintText: "User Name",
                    emptyValidationMessage: "Please Enter User Name"),
              ),
              SizedBox(
                height: 30.h,
              ),
              CircularButtons(
                  height: height * 0.06,
                  width: 210.w,
                  text: "Reset Password",
                  textStyle: smallWhiteText,
                  onPressed: () {},
                  backgroundColor: AppColors.yellow_color,
                  textColor: AppColors.white_color,
                  borderColor: AppColors.yellow_color),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
