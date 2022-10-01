import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomButton extends StatelessWidget {
   CustomButton({Key? key,required this.Buttonnamr}) : super(key: key);
   String ? Buttonnamr;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xffFD6501),
          borderRadius: BorderRadius.circular(22),
      ),
      alignment: Alignment.center,
      child: Text(
        '${Buttonnamr}',
        style: GoogleFonts.poppins(fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color(0xffffffff),
        ),
      ),
    );
  }
}
