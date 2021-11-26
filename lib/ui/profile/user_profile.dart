import 'package:car_app/translations/locale_keys.g.dart';
import 'package:car_app/ui/contact_us/warning.dart';
import 'package:car_app/utils/colors.dart';
import 'package:car_app/utils/dashbordModel.dart';
import 'package:car_app/utils/routes.dart';
import 'package:car_app/utils/text_style.dart';
import 'package:car_app/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:car_app/translations/locale_keys.g.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height,
              width: width,
              child: Stack(children: [
                Positioned(
                    child: Image(
                        fit: BoxFit.fitWidth,
                        width: width,
                        image: AssetImage(
                          'assets/images/ellipse.png',
                        ))),
                Positioned(
                    top: 58.h,
                    left: 33.w,
                    child: IconButton(
                        onPressed: () {
                          AppRoutes.pop(context);
                        },
                        icon: Icon(
                          Icons.chevron_left,
                          size: 32.sp,
                        ))),
                //Positioned(top: 97.h, left: 33.w, child: Logo()),
                Positioned(
                    top: 120.h,
                    left: 60.h,
                    height: 80.h,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            DashBordModel.customerData!.name.toString(),
                            style: largeGreyText,
                          )
                        ])),
                Positioned(
                  top: 200.h,
                  left: 25.w,
                  right: 0.w,
                  //height: 80.h,
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: Container(
                      height: height * 0.72,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 20.h),
                            Text(
                              LocaleKeys.My_Profile.tr(),
                              style: largeGreyText,
                            ),
                            SizedBox(height: 20.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.car,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Text(
                                    "Total Vechicles",
                                    style: userProfileText,
                                  ),
                                  Spacer(),
                                  Text(
                                    "05",
                                    style: subtitleYellowText,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.tools,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Text(
                                    LocaleKeys.Total_Visits.tr(),
                                    style: userProfileText,
                                  ),
                                  Spacer(),
                                  Text(
                                    "17",
                                    style: subtitleYellowText,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.envelope,
                                    color: Colors.black,
                                    size: 30,
                                  ),

                                  //Image.asset("assets/images/email.png"),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Text(
                                    DashBordModel.customerData!.email
                                        .toString(),
                                    style: userProfileText,
                                  ),
                                  // Spacer(),
                                  // Text(
                                  //   "05",
                                  //   style: subtitleYellowText,
                                  // ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.phone,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Text(
                                    DashBordModel.customerData!.contact
                                        .toString(),
                                    style: userProfileText,
                                  ),
                                  // Spacer(),
                                  // Text(
                                  //   "05",
                                  //   style: subtitleYellowText,
                                  // ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                              height: height * 0.20,
                              width: width,
                              color: Color.fromRGBO(227, 183, 116, 0.35),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        LocaleKeys.Follow_Our.tr(),
                                        style: smallGreyText,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Text(
                                        LocaleKeys.Socials.tr(),
                                        style: subtitleYellowText,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(FontAwesomeIcons.facebookF,
                                          color: AppColors.grey_color),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Icon(FontAwesomeIcons.twitter,
                                          color: AppColors.grey_color),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Icon(FontAwesomeIcons.linkedinIn,
                                          color: AppColors.grey_color),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Icon(FontAwesomeIcons.instagram,
                                          color: AppColors.grey_color),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Icon(FontAwesomeIcons.youtube,
                                          color: AppColors.grey_color),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  CircularButtons(
                                      height: height * 0.05,
                                      width: 180.w,
                                      text: LocaleKeys.Contact_Us.tr(),
                                      textStyle: smallWhiteText1,
                                      onPressed: () {},
                                      backgroundColor: AppColors.yellow_color,
                                      textColor: Colors.white,
                                      borderColor: AppColors.yellow_color),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircularButtons(
                                      height: height * 0.05,
                                      width: 150.w,
                                      text: LocaleKeys.Log_Out.tr(),
                                      textStyle: smallWhiteText1,
                                      onPressed: () {
                                        AppRoutes.push(context, Warning());
                                      },
                                      backgroundColor: AppColors.yellow_color,
                                      textColor: Colors.white,
                                      borderColor: AppColors.yellow_color),
                                  CircularButtons(
                                      height: height * 0.05,
                                      width: 150.w,
                                      text: LocaleKeys.Change_Password.tr(),
                                      textStyle: smallWhiteText1,
                                      onPressed: () {
                                        AppRoutes.push(context, Warning());
                                      },
                                      backgroundColor: AppColors.yellow_color,
                                      textColor: Colors.white,
                                      borderColor: AppColors.yellow_color),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            CircularButtons(
                                height: height * 0.05,
                                width: 180.w,
                                text: LocaleKeys.Disclaimer.tr(),
                                textStyle: smallWhiteText1,
                                onPressed: () {
                                  AppRoutes.push(context, Warning());
                                },
                                backgroundColor: AppColors.yellow_color,
                                textColor: Colors.white,
                                borderColor: AppColors.yellow_color),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

//  }
