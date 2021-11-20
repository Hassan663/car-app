import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:car_app/model/profile_model.dart';
import 'package:car_app/translations/locale_keys.g.dart';
import 'package:car_app/translations/locale_keys.g.dart';
import 'package:car_app/ui/home/home_screen/home_screen.dart';
import 'package:car_app/ui/home/home_screen/model/model.dart';

class LastVisit extends StatelessWidget {
  final int index;
  final VechileTVisitData lastVisit;
  const LastVisit({
    Key? key,
    required this.index,
    required this.lastVisit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF8EDDC),
      width: 287.w,
      child: ListView(children: [
        Column(
          children: [
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: LocaleKeys.Arrival_Date.tr(),
                trailing: convert(lastVisit.arrivalDate!)),
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: LocaleKeys.Promise_Date.tr(),
                trailing: convert(lastVisit.promisedDate!)),
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: LocaleKeys.Delivery_Date.tr(),
                trailing: convert(lastVisit.deliveryDate!)),
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: LocaleKeys.Insurance.tr(),
                trailing: lastVisit.insurance!),
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: LocaleKeys.Task.tr(),
                trailing: lastVisit.task!),
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: LocaleKeys.Status.tr(),
                trailing: lastVisit.status!),
          ],
        ),
      ]),
    );
  }

  String convert(DateTime d) {
    return "${d.year.toString()}-${d.month.toString()}-${d.day.toString()}";
  }
}
