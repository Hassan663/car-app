
import 'package:car_app/ui/home/home_screen_2/components/custom_list_tile.dart';
import 'package:car_app/ui/home/home_screen_2/model/model.dart';
import 'package:car_app/widgets/history_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CarinfoCard extends StatelessWidget {
  const CarinfoCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 271.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: CarData.data.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(right: 25.w),
              child: SizedBox(
                height: 271.h,
                width: 220.w,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomListTile(
                        index: index,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        height: 74.h,
                        child: Image.asset(CarData.data[index].image),
                      ),
                      SizedBox(
                        height: 63.h,
                      ),
                      SizedBox(
                        height: 36.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 25.0),
                                  child: Text(
                                    'Details',
                                    style: GoogleFonts.openSans(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff414141)),
                                  ),
                                )),
                            CustomButton(
                              tap: () => print('pressed'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
