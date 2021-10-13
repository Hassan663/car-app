import 'package:car_app/translations/locale_keys.g.dart';
import 'package:car_app/ui/home/home_screen/home_screen.dart';
import 'package:car_app/ui/home/home_screen/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:car_app/translations/locale_keys.g.dart';

class CurrentVisit extends StatelessWidget {
  final int index;
  const CurrentVisit({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF8EDDC),
      width: 287.w,
      child: SingleChildScrollView(
        child: Column(
          children: [
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: LocaleKeys.Arrival_Date.tr(),
                trailing:
                    HomeScreen1CarData.data[index].current![0].arrivaldate!),
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: LocaleKeys.Promise_Date.tr(),
                trailing:
                    HomeScreen1CarData.data[index].current![0].promisedate!),
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: LocaleKeys.Insurance.tr(),
                trailing:
                    HomeScreen1CarData.data[index].current![0].Insurance!),
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: LocaleKeys.Task.tr(),
                trailing: HomeScreen1CarData.data[index].current![0].task!),
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: LocaleKeys.Status.tr(),
                trailing: HomeScreen1CarData.data[index].current![0].status!),
          ],
        ),
      ),
    );
  }
}
