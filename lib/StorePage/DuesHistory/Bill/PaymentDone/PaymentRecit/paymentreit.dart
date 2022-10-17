import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:flutter/material.dart';

class PaymentRecit extends StatelessWidget {
  const PaymentRecit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 25,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.picture_as_pdf,
            size: 22,
            color: Color(0xff148FC3),
          ),
          SizedBox(
            width: 10,
          ),
          CustomText(
              text: "Payment Receipt",
              color: Color(0xff148FC3),
              fontSize: 16,
              FontWeightt: FontWeight.w400)
        ],
      ),
    );
  }
}
