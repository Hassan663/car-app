// import 'package:car_app/ui/home/appointment_screen/appointment_screen.dart';
// import 'package:car_app/utils/routes.dart';
// import 'package:car_app/widgets/current_visit.dart';
// import 'package:car_app/widgets/history_card.dart';
// import 'package:car_app/widgets/last_visit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

// class CarCard extends StatelessWidget {
//   const CarCard({
//     Key? key,
//     required TabController tabController,
//   })  : _tabController = tabController,
//         super(key: key);

//   final TabController _tabController;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.only(right: 94.w),
//       elevation: 5,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20.0),
//       ),
//       child: Column(
//         children: [
//           Column(children: [
//             ListTile(
//               isThreeLine: true,
//               leading: Image(
//                 image: AssetImage('assets/images/logo1.png'),
//               ),
//               title: Text(
//                 'Centenario',
//                 style: GoogleFonts.openSans(
//                     color: Color(0xff414141),
//                     fontSize: 18.sp,
//                     fontWeight: FontWeight.w400),
//               ),
//               subtitle: Text(
//                 'Lamborghini',
//                 style: GoogleFonts.openSans(
//                     color: Color(0xff414141),
//                     fontSize: 13.sp,
//                     fontWeight: FontWeight.w600),
//               ),
//             ),
//             Row(children: [
//               Spacer(),
//               Image(image: AssetImage('assets/images/car2.png'))
//             ]),
//           ]),
//           TabBar(
//             unselectedLabelColor: Color(0xff838383),
//             indicatorColor: Color(0xffF48129),
//             labelColor: Color(0xffF48129),
//             tabs: [
//               Tab(
//                 text: 'Current Visit',
//               ),
//               Tab(
//                 text: 'Last Visit',
//               )
//             ],
//             controller: _tabController,
//             indicatorSize: TabBarIndicatorSize.tab,
//           ),
//           SizedBox(
//             height: 165.h,
//             width: 287.w,
//             child: TabBarView(
//               children: [
//                 CurrentVisit(),
//                 LastVisit(),
//               ],
//               controller: _tabController,
//             ),
//           ),
//           SizedBox(
//             height: 5.h,
//           ),
//           CustomButton(
//               tap: () => AppRoutes.push(
//                   context,
//                   AppointmenScreen(
//                     vehicleHistory: null,
//                   )))
//         ],
//       ),
//     );
//   }
// }
