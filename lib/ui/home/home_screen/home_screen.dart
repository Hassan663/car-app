import 'package:car_app/ui/home/home_screen/components/banner_section.dart';
import 'package:car_app/ui/home/home_screen/components/car_card.dart';
import 'package:car_app/widgets/bottom_bar.dart';
import 'package:car_app/widgets/buttons.dart';
import 'package:car_app/widgets/habib.dart';
import 'package:car_app/widgets/navbar.dart';
import 'package:car_app/widgets/titlebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w),
            child: FloatingButton1(),
          ),
          FloatingButton(),
        ],
      ),
        body: Padding(
          padding: EdgeInsets.only(left: 33.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 25.h),
                TitleBar(),
                BelowTitle(),
                SizedBox(height: 19.h),
                CarCard(tabController: _tabController),
                SizedBox(height: 27.h),
                BannerSection(),
                 SizedBox(height: 27.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class VisitTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String trailing;
  const VisitTile(
      {required this.icon,
      required this.title,
      required this.trailing,
      Key? key,
      Color? color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: SizedBox(
        height: 25.h,
        child: ListTile(
          leading: Icon(icon, color: Color(0xffF48129)),
          minLeadingWidth: 0.h,
          title: Text(
            title,
            style: GoogleFonts.openSans(fontSize: 14.sp, fontWeight: FontWeight.w400),
          ),
          trailing: Text(trailing,
              style: GoogleFonts.openSans(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffF48129))),
        ),
      ),
    );
  }
}
