import 'package:flutter/material.dart';

class PhoneButton extends StatelessWidget {
  const PhoneButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: FloatingActionButton(
        child: Image.asset('assets/images/phone.png'),
        onPressed: () {},
        backgroundColor: Color(0xffF48129),
      ),
    );
  }
}
