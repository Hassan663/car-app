
// import 'package:car_app/ui/profile/user_profile.dart';
// import 'package:car_app/ui/settings/setting.dart';
// import 'package:car_app/utils/routes.dart';
// import 'package:car_app/widgets/bottom_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

// class NavBar extends StatefulWidget {
//   @override
//   _NavBarState createState() => _NavBarState();
// }

// class _NavBarState extends State<NavBar> {
//   @override
//   Widget build(BuildContext context) {
//     int _selectedIndex = 2;
//     const TextStyle optionStyle =
//         TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
//     const List<Widget> _widgetOptions = <Widget>[];
//     return GNav(
//         rippleColor: Color(0xffF48129),
//         hoverColor: Color(0xffF48129),
//         gap: 8,
//         activeColor: Colors.grey,
//         iconSize: 24,
//         padding: EdgeInsets.symmetric(horizontal: 33.w, vertical: 12),
//         //tabBackgroundColor: Colors.white,
//         color: Colors.grey,
//         tabs: [
//           GButton(
//             onPressed: () {
//               AppRoutes.push(context, BottomBar());
//             },
//             icon: Icons.home,
//             text: 'Home',
//           ),
//           GButton(
//             onPressed: () {
//               AppRoutes.push(context, BottomBar());
//             },
//             icon: Icons.person,
//             text: 'User',
//           ),
//           GButton(
//             onPressed: () {
//               AppRoutes.push(context, BottomBar());
//             },
//             icon: Icons.settings,
//             text: 'Settings',
//           ),
//         ]);
//   }
// }
