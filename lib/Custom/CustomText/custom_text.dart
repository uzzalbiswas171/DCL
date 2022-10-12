import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
   CustomText({Key? key,required this.text,required this.color,required this.fontSize,required this.FontWeightt}) : super(key: key);
  final FontWeight? FontWeightt;
  final double? fontSize;
  final Color? color;
  final String ?text;
  @override
  Widget build(BuildContext context) {
    return Text(
      "${text}",
      style: GoogleFonts.poppins(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeightt,
      ),
    );
  }
}
