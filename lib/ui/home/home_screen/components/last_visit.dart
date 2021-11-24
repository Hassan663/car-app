import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:car_app/model/profile_model.dart';
import 'package:car_app/translations/locale_keys.g.dart';
import 'package:car_app/translations/locale_keys.g.dart';
import 'package:car_app/ui/home/home_screen/home_screen.dart';
import 'package:car_app/ui/home/home_screen/model/model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                icon: Icons.calendar_today,
                title: LocaleKeys.Arrival_Date.tr(),
                trailing: convert(lastVisit.arrivalDate!)),
            VisitTile(
                icon: Icons.calendar_today,
                title: LocaleKeys.Promise_Date.tr(),
                trailing: convert(lastVisit.promisedDate!)),
            VisitTile(
                icon: Icons.calendar_today,
                title: LocaleKeys.Delivery_Date.tr(),
                trailing: convert(lastVisit.deliveryDate!)),
            VisitTile(
                icon: Icons.description,
                title: LocaleKeys.Insurance.tr(),
                trailing: lastVisit.insurance!),
            VisitTile(
                icon: Icons.assignment_turned_in,
                title: LocaleKeys.Task.tr(),
                trailing: lastVisit.task!),
            VisitTile(
                icon: FontAwesomeIcons.tasks,
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
