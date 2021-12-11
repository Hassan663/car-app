import 'package:car_app/utils/colors.dart';
import 'package:car_app/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFields {
  static Widget normalTextField(
    BuildContext context, {
    IconData? icon,
    bool? obsecuretext,
    String? hintText,
    required String labelText,
    TextEditingController? controller,
    bool readOnly = false,
    String? emptyValidationMessage,
    TextInputType? inputType,
    int? maxLength,
    required Color color,
  }) {
    return TextFormField(
      validator: (value) {
        return (value!.isEmpty) ? emptyValidationMessage : null;
      },
      controller: controller,
      showCursor: true,
      cursorColor: AppColors.primery_color,
      maxLines: maxLength,
      obscureText: false,
      style: smallBlackText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 10, 16, 20),
        hintText: hintText,
        hintStyle: TextStyle(
            color: AppColors.grey_color,
            fontSize: 16,
            fontWeight: FontWeight.w400),
        labelText: labelText,
        //  labelStyle: TextStyle(
        //      color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w600)
        labelStyle: GoogleFonts.openSans(
            color: AppColors.yellow_color,
            fontSize: 16,
            fontWeight: FontWeight.w600),
        filled: false,
        fillColor: Color(0xFF50566C),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
          borderSide: BorderSide(color: AppColors.yellow_color, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              30.0,
            ),
          ),
          borderSide: BorderSide(color: AppColors.yellow_color, width: 1),
        ),
        alignLabelWithHint: false,
        //contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
      ),
    );
  }
}
