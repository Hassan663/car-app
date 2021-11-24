import 'package:car_app/ui/profile/user_profile.dart';
import 'package:car_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 22.w),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
              onTap: () {
                AppRoutes.push(context, UserProfile());
              },
              child: Image(image: AssetImage('assets/images/leading.png'))),
        ]));
  }
}
