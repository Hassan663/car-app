import 'package:car_app/ui/contact_us/contact_us.dart';
import 'package:car_app/utils/colors.dart';
import 'package:car_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CircularButtons extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final TextStyle textStyle;
  const CircularButtons(
      {required this.text,
      required this.width,
      required this.height,
      required this.textStyle,
      required this.onPressed,
      required this.backgroundColor,
      required this.textColor,
      required this.borderColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: BorderSide(color: borderColor))),
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            foregroundColor: MaterialStateProperty.all(textColor),
            // padding:
            //     MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 23.h)),
            textStyle: MaterialStateProperty.all(textStyle)),
        child: Text(text),
      ),
    );
  }
}

class FloatingButton extends StatelessWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Image.asset('assets/images/phone.png'),
      onPressed: () {
        AppRoutes.push(context, ContactUs());
      },
      backgroundColor: Color(0xffF48129),
    );
  }
}

class FloatingButton1 extends StatelessWidget {
  const FloatingButton1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    openwhatsapp() async {
      var whatsapp = "+919144040888";
      var whatsappURl_android =
          "whatsapp://send?phone=" + whatsapp + "&text=hello";
      var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse("hello")}";
      // if(Platform.isIOS){
      //   // for iOS phone only
      //   if( await canLaunch(whatappURL_ios)){
      //      await launch(whatappURL_ios, forceSafariVC: false);
      //   }else{
      //     ScaffoldMessenger.of(context).showSnackBar(
      //         SnackBar(content: new Text("whatsapp no installed")));

      //   }

//  }else{
      // android; , web
      if (await canLaunch(whatsappURl_android)) {
        await launch(whatsappURl_android);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
      }
    }

    return FloatingActionButton(
      child: Icon(FontAwesomeIcons.whatsapp, color: AppColors.white_color),
      onPressed: () {
        //   print("object1");
        openwhatsapp();
      },
      backgroundColor: Color(0xffF48129),
    );
  }
}
