
import 'package:car_app/ui/home/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LastVisit extends StatelessWidget {
  const LastVisit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfffef2e9),
      width: 287.w,
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
              title: 'Delievery date',
              trailing: '15 Sept 2021'),
          VisitTile(
              color: Color(0xffF48129),
              icon: Icons.monetization_on_outlined,
              title: 'Task',
              trailing: 'Repair'),
          VisitTile(
              color: Color(0xff0B6D09),
              icon: Icons.monetization_on_outlined,
              title: 'Status',
              trailing: 'Pending'),
        ],
      ),
    );
  }
}
