import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerSlidemenue extends StatelessWidget {
  CustomerSlidemenue({Key? key,required this.name,required this.icon}) : super(key: key);
  String ? name;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20),
      height: 45,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon,size: 25,color: Color(0xffFD6501),),
              SizedBox(width: 22,),
              Text("${name}",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),)
            ],
          ),
          Container(
             padding:EdgeInsets.only(left: 20,right: 20),
            height: 1,
            color: Color(0xffFD6501),
          ),
        ],
      ),
    );
  }
}
