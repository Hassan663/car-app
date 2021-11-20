import 'package:car_app/provider/profile_provider.dart';
import 'package:car_app/utils/colors.dart';
import 'package:car_app/utils/dashbordModel.dart';
import 'package:car_app/utils/routes.dart';
import 'package:car_app/utils/text_style.dart';
import 'package:car_app/widgets/buttons.dart';
import 'package:car_app/widgets/bottom_bar.dart';
import 'package:car_app/widgets/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:car_app/translations/locale_keys.g.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formLoginKey = GlobalKey<FormState>();

  // ignore: unused_field
  TextEditingController _contactController = TextEditingController();
  // ignore: unused_field
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  bool validateAndSaveLogin() {
    final form = _formLoginKey.currentState;
    form!.save();
    if (form.validate()) {
      return true;
    } else {
      return false;
    }
  }

//  "0563437070",
//       "123456",
  _validateAndSubmitSignup(context) {
    if (validateAndSaveLogin()) {
      Provider.of<ProfileProvider>(context, listen: false)
          .loginresponse(
        // "0563437070",
        // "123456",
        _contactController.text,
        _passwordController.text,
      )
          .then((value) {
        if (value != null) {
          AppRoutes.push(context, BottomBar());
        } else {
          DashBordModel.showMessageError("Login Faild");
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white_color,
      body: SingleChildScrollView(
        child: Form(
          key: _formLoginKey,
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
                    controller: _contactController,
                    color: AppColors.white_color,
                    hintText: "0563437070",
                    emptyValidationMessage: "Please Enter Contact Number"),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: TextFields.normalTextField(context,
                    labelText: LocaleKeys.Password.tr(),
                    color: AppColors.white_color,
                    controller: _passwordController,
                    hintText: "123456",
                    emptyValidationMessage: "Please Enter password"),
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
                    _validateAndSubmitSignup(context);
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
      ),
    );
  }
}
