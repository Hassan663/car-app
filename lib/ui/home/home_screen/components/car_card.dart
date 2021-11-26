import 'dart:ui';

import 'package:car_app/translations/locale_keys.g.dart';
import 'package:car_app/ui/home/appointment_screen/appointment_screen.dart';
import 'package:car_app/ui/home/home_screen/components/current_visit.dart';
import 'package:car_app/ui/home/home_screen/components/last_visit.dart';
import 'package:car_app/ui/home/home_screen/model/model.dart';
import 'package:car_app/utils/dashbordModel.dart';
import 'package:car_app/utils/routes.dart';
import 'package:car_app/widgets/history_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:car_app/translations/locale_keys.g.dart';

class CarCard extends StatelessWidget {
  const CarCard({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: DashBordModel
              .allVechiles?.vechiles.length, //HomeScreen1CarData.data.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(right: 25.w),
              child: SizedBox(
                height: 400.h,
                width: 300.w,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 16.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 22.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image.network(DashBordModel
                                        .allVechiles!
                                        .vechiles[index]
                                        .carMakeLogo),
                                  ),
                                  // Image.asset(
                                  //     HomeScreen1CarData.data[index].logo!),
                                  SizedBox(width: 12.w),
                                  Text(
                                      DashBordModel.allVechiles?.vechiles[index]
                                              .carMakeName ??
                                          "",
                                      style: GoogleFonts.openSans(
                                        color: Color(0xff414141),
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 38.0),
                                child: Text(
                                    DashBordModel.allVechiles?.vechiles[index]
                                            .carModelName ??
                                        "",
                                    style: GoogleFonts.openSans(
                                      color: Color(0xff414141),
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 38.0),
                                child: Text(
                                    DashBordModel.allVechiles?.vechiles[index]
                                            .plateNo ??
                                        "",
                                    style: GoogleFonts.openSans(
                                      color: Color(0xff838383),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                    )),
                              )
                            ]),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        height: 30.h,
                        // child: Image.network(DashBordModel
                        //     .allVechiles!.vechiles[index].carModelImage),
                      ),
                      TabBar(labelStyle: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),
                        unselectedLabelColor: Color(0xff838383),
                        indicatorColor: Color(0xffF48129),
                        labelColor: Color(0xffF48129),
                        tabs: [
                          Tab(
                            text: LocaleKeys.Current_Visit.tr(),
                          ),
                          Tab(
                            text: LocaleKeys.Last_Visit.tr(),
                          )
                        ],
                        controller: _tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                      ),
                      DashBordModel.allVechiles!.vechiles[index]
                                  .vechileCurrentVisitData.statusCode ==
                              200
                          ? Column(
                              children: [
                                SizedBox(
                                  height: 300.h,
                                  width: 300.w,
                                  child: TabBarView(
                                    children: [
                                      CurrentVisit(
                                          index: index,
                                          currentVisit: DashBordModel
                                              .allVechiles!
                                              .vechiles[index]
                                              .vechileCurrentVisitData),
                                      LastVisit(
                                          index: index,
                                          lastVisit: DashBordModel
                                              .allVechiles!
                                              .vechiles[index]
                                              .vechileLastVisitData),
                                    ],
                                    controller: _tabController,
                                  ),
                                ),
                              ],
                            )
                          : Container(
                              height: 162.h,
                              width: 287.w,
                              child: Center(
                                child: Text("Vehicle not found"),
                              ),
                            ),
                      Spacer(),
                      DashBordModel.allVechiles!.vechiles[index]
                                  .vechileCurrentVisitData.statusCode ==
                              200
                          ? CustomButton(
                              tap: () => AppRoutes.push(
                                  context,
                                  AppointmenScreen(
                                      custid: DashBordModel
                                          .customerData!.customerId,
                                      vehicle: DashBordModel
                                          .allVechiles!.vechiles[index])),
                            )
                          : SizedBox.shrink()
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
