import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:flutter/material.dart';

class Pay_Bill_Shope_Address extends StatelessWidget {
  Pay_Bill_Shope_Address({Key? key,this.shpe_Address}) : super(key: key);
 String ? shpe_Address;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: double.infinity,
      color: Color(0xff043D53),
      alignment: Alignment.center,
      child: Container(
        alignment: Alignment.center,
        height: 70,
        width: 249,
        child: CustomText(text: "${shpe_Address}", color: Colors.white70, fontSize: 16, FontWeightt: FontWeight.w400, ),
      ),
    );
  }
}
