import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 33.w),
      child: Stack(
        children: [
          Container(
            height: 132.h,
            width: 348.w,
            child: Center(
                child: Text(
              'BANNER SECTION',
              style: GoogleFonts.openSans(fontSize: 20.sp, fontWeight: FontWeight.w600),
            )),
            decoration: BoxDecoration(
                color: Color(0xffF8EDDC),
                borderRadius: BorderRadius.circular(20)),
          ),
          // Positioned(
          //   top: 72.h,
          //   left: 288.w,
          //   child: FloatingActionButton(
          //     child: Image.asset('assets/images/phone.png'),
          //     onPressed: () {},
          //     backgroundColor: Color(0xffF48129),
          //   ),
          // )
        ],
      ),
    );
  }
}
