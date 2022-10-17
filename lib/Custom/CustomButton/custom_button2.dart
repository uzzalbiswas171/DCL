import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton2 extends StatelessWidget {
  CustomButton2({Key? key,required this.text,required this.color,required this.buttoncolor,required this.fontSize,required this.FontWeightt, this.buttonheight}) : super(key: key);
  final FontWeight? FontWeightt;
  final double? fontSize,buttonheight;
  final Color? color,buttoncolor;
  final String ?text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonheight,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: Colors.red),
        color: buttoncolor,
        borderRadius: BorderRadius.circular(22),
      ),
      alignment: Alignment.center,
      child: Text(
        textAlign: TextAlign.center,
        "${text}",
        style: GoogleFonts.poppins(
          color: color,
          fontSize: fontSize,
          fontWeight: FontWeightt,
        ),
      ),
    );
  }
}
