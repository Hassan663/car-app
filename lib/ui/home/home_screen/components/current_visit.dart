import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:car_app/model/profile_model.dart';
import 'package:car_app/translations/locale_keys.g.dart';
import 'package:car_app/ui/home/home_screen/home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CurrentVisit extends StatelessWidget {
  final int index;
  final VechileTVisitData currentVisit;

  const CurrentVisit({
    Key? key,
    required this.index,
    required this.currentVisit,
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
                icon: Icons.calendar_today,
                title: LocaleKeys.Arrival_Date.tr(),
                trailing: convert(currentVisit.arrivalDate!)),
            VisitTile(
                icon: Icons.calendar_today,
                title: LocaleKeys.Promise_Date.tr(),
                trailing: convert(currentVisit.promisedDate!)),
            VisitTile(
                icon: Icons.description,
                title: LocaleKeys.Insurance.tr(),
                trailing: currentVisit.insurance!),
            VisitTile(
                icon: Icons.assignment_turned_in,
                title: LocaleKeys.Task.tr(),
                trailing: currentVisit.task!),
            VisitTile(
                icon: FontAwesomeIcons.tasks,
                title: LocaleKeys.Status.tr(),
                trailing: currentVisit.status!),
          ],
        ),
      ),
    );
  }

  String convert(DateTime d) {
    return "${d.year.toString()}-${d.month.toString()}-${d.day.toString()}";
  }
}
