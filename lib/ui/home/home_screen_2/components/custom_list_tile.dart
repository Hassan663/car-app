
import 'package:car_app/ui/home/home_screen_2/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTile extends StatelessWidget {
  final int index;
  const CustomListTile({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 16.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(CarData.data[index].title),
            Image.asset(CarData.data[index].logo)
          ]),
          SizedBox(
            height: 5.h,
          ),
          Text(
            CarData.data[index].subtitle,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(CarData.data[index].model),
        ],
      ),
    );
  }
}
