import 'package:car_app/ui/home/home_screen/home_screen.dart';
import 'package:car_app/ui/profile/user_profile.dart';
import 'package:car_app/ui/settings/setting.dart';
import 'package:car_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:car_app/translations/locale_keys.g.dart';
import 'package:easy_localization/src/public_ext.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    UserProfile(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: AppColors.yellow_color,
              hoverColor: AppColors.yellow_color,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: AppColors.yellow_color,
              color: Colors.grey,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: LocaleKeys.Home.tr(),
                ),
                GButton(
                  icon: Icons.person,
                  text: LocaleKeys.Profile.tr(),
                ),
                GButton(
                  icon: Icons.settings,
                  text: LocaleKeys.Setting.tr(),
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   late int _currentIndex;
//   late List<Widget> _children;

//   @override
//   void initState() {
//     _currentIndex = 0;
//     _children = [
//       HomeScreen2(),
//       UserProfile(),
//       Setting(),
//     ];
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoTabScaffold(
//         tabBar: CupertinoTabBar(
//           activeColor: AppColors.yellow_color,
//           inactiveColor: AppColors.white_color,
//           currentIndex: _currentIndex,
//           onTap: onTabTapped,
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               title: Text("Home"),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               title: Text("Profile"),
//             ),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.settings), title: Text("Setting")),
//           ],
//         ),
//         tabBuilder: (BuildContext context, int index) {
//           return CupertinoTabView(
//             builder: (BuildContext context) {
//               return SafeArea(
//                 top: false,
//                 bottom: false,
//                 child: CupertinoApp(
//                   home: CupertinoPageScaffold(
//                     resizeToAvoidBottomInset: false,
//                     child: _children[_currentIndex],
//                   ),
//                 ),
//               );
//             },
//           );
//         });
//   }

//   void onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
// }
