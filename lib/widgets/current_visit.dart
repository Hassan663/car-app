
import 'package:car_app/ui/home/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrentVisit extends StatelessWidget {
  const CurrentVisit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF8EDDC),
      width: 290.w,
      child: Column(
        children: [
          VisitTile(
              color: Color(0xffF48129),
              icon: Icons.monetization_on_outlined,
              title: 'Arival date',
              trailing: '12 Sept 2021'),
          VisitTile(
              color: Color(0xffF48129),
              icon: Icons.monetization_on_outlined,
              title: 'Promise date',
              trailing: '15 Sept 2021'),
          VisitTile(
              color: Color(0xffF48129),
              icon: Icons.monetization_on_outlined,
              title: 'Task',
              trailing: 'Repair'),
          VisitTile(
              color: Color(0xffCCB800),
              icon: Icons.monetization_on_outlined,
              title: 'Status',
              trailing: 'Pending'),
        ],
      ),
    );
  }
}
