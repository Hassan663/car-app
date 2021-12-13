import 'package:car_app/translations/locale_keys.g.dart';
import 'package:car_app/ui/auth/forget_password.dart';
import 'package:car_app/utils/colors.dart';
import 'package:car_app/utils/routes.dart';
import 'package:car_app/utils/text_style.dart';
import 'package:car_app/widgets/bottom_bar.dart';
import 'package:car_app/widgets/buttons.dart';
import 'package:car_app/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/src/public_ext.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      //bottomNavigationBar: BottomBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.chevron_left,
                        color: Colors.black,
                        size: 30.sp,
                      )),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  "\nSettings",
                  style: largeTitleText,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: height * 0.8,
                width: width,
                decoration: new BoxDecoration(
                    // changes position of shadow

                    color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(15.0),
                        topRight: const Radius.circular(15.0),
                        bottomLeft: const Radius.circular(15.0),
                        bottomRight: const Radius.circular(15.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3)),
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                            color: AppColors.grey_color,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            LocaleKeys.Account.tr(),
                            style: largeBlackText,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //       left: 20.w, right: 20.w, top: 10.h, bottom: 10.h),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Text(
                      //         LocaleKeys.Edit_Profile.tr(),
                      //         style: subtitleGreyText,
                      //       ),
                      //       CircleAvatar(
                      //         maxRadius: 20,
                      //         backgroundColor: AppColors.yellow_color,
                      //         child: IconButton(
                      //           onPressed: () {},
                      //           icon: Icon(
                      //             Icons.chevron_right,
                      //             color: AppColors.white_color,
                      //           ),
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20.w, right: 20.w, top: 10.h, bottom: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              LocaleKeys.Password.tr(),
                              style: subtitleGreyText,
                            ),
                            CircleAvatar(
                              maxRadius: 20,
                              backgroundColor: AppColors.yellow_color,
                              child: IconButton(
                                onPressed: () {
                                  AppRoutes.push(context, ForgetPassword());
                                },
                                icon: Icon(
                                  Icons.chevron_right,
                                  color: AppColors.white_color,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   children: [
                      //     Icon(
                      //       Icons.notifications,
                      //       color: AppColors.grey_color,
                      //     ),
                      //     SizedBox(
                      //       width: 10.w,
                      //     ),
                      //     Text(
                      //       LocaleKeys.Notifications.tr(),
                      //       style: largeBlackText,
                      //     )
                      //   ],
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //       left: 20.w, right: 20.w, top: 20.h, bottom: 10.h),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Text(
                      //         LocaleKeys.Notifications.tr(),
                      //         style: subtitleGreyText,
                      //       ),
                      //       Switch(
                      //         value: isSwitched,
                      //         onChanged: (value) {
                      //           setState(() {
                      //             isSwitched = value;
                      //             print(isSwitched);
                      //           });
                      //         },
                      //         activeTrackColor: Colors.grey,
                      //         activeColor: AppColors.yellow_color,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //       left: 20.w, right: 20.w, top: 10.h, bottom: 10.h),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Text(
                      //         LocaleKeys.App_Notifications.tr(),
                      //         style: subtitleGreyText,
                      //       ),
                      //       Switch(
                      //         value: isSwitched,
                      //         onChanged: (value) {
                      //           setState(() {
                      //             isSwitched = value;
                      //             print(isSwitched);
                      //           });
                      //         },
                      //         activeTrackColor: Colors.grey,
                      //         activeColor: AppColors.yellow_color,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/more.png"),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            LocaleKeys.More.tr(),
                            style: largeBlackText,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20.w, right: 20.w, top: 20.h, bottom: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              LocaleKeys.Language.tr(),
                              style: subtitleGreyText,
                            ),
                            CircleAvatar(
                              maxRadius: 20,
                              backgroundColor: AppColors.yellow_color,
                              child: IconButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          content: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.w),
                                            child: Container(
                                              height: height * 0.2,
                                              width: width,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Center(
                                                        child: Text(
                                                          "Please select your language",
                                                          style: TextStyle(
                                                              fontSize: 15.sp,
                                                              letterSpacing: 1,
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                          width: width * 0.04),
                                                    ],
                                                  ),
                                                  SizedBox(height: 20.h),
                                                  CircularButtons(
                                                      height: 50.h,
                                                      text: "English",
                                                      textStyle: smallWhiteText,
                                                      onPressed: () async {
                                                        await context.setLocale(
                                                            Locale('en'));
                                                        AppRoutes.pop(context);
                                                      },
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.60,
                                                      backgroundColor: AppColors
                                                          .yellow_color,
                                                      textColor: Colors.white,
                                                      borderColor: AppColors
                                                          .yellow_color),
                                                  SizedBox(
                                                    height: 20.h,
                                                  ),
                                                  CircularButtons(
                                                      height: 50.h,
                                                      text: "Arabic",
                                                      textStyle: smallWhiteText,
                                                      onPressed: () async {
                                                        await context.setLocale(
                                                            Locale('ar'));
                                                        AppRoutes.pop(context);
                                                      },
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.60,
                                                      backgroundColor: AppColors
                                                          .yellow_color,
                                                      textColor: Colors.white,
                                                      borderColor: AppColors
                                                          .yellow_color),
                                                  SizedBox(
                                                    height: 20.h,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      });
                                },
                                icon: Icon(
                                  Icons.chevron_right,
                                  color: AppColors.white_color,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //       left: 20.w, right: 20.w, top: 10.h, bottom: 10.h),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Text(
                      //         LocaleKeys.Country.tr(),
                      //         style: subtitleGreyText,
                      //       ),
                      //       CircleAvatar(
                      //         maxRadius: 20,
                      //         backgroundColor: AppColors.yellow_color,
                      //         child: IconButton(
                      //           onPressed: () {},
                      //           icon: Icon(
                      //             Icons.chevron_right,
                      //             color: AppColors.white_color,
                      //           ),
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
