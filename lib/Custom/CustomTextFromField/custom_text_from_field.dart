import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFromField extends StatelessWidget {
    CustomTextFromField({Key? key,
    required this.controller,
    required this.validator,
    required this.color,
    required this.fontSize,
     required this.hintText,
      this.suffixIcon,
      this.maxLines,
     required this.obscureText,
  }) : super(key: key);
    bool obscureText;
  final Color? color;
  final double ? fontSize;
  FormFieldValidator<String>? validator;
  final TextEditingController? controller;
    final Widget? suffixIcon;
    int ?maxLines;
    String ?hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
maxLines: maxLines,
      obscureText: obscureText,
      // style: TextStyle(
      //   fontSize:
      // ),
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        fillColor: Colors.green,
        focusColor: Colors.red,
        suffixIcon:suffixIcon,
       border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(10),
       ),

        hintText:hintText,
        hintStyle: GoogleFonts.poppins(
          fontSize: fontSize,
          fontWeight: FontWeight.w400,
          color: color,
        ),
      ),
    );
  }
}
