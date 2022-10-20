
import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:flutter/material.dart';

class Product_Order_Head_line extends StatelessWidget {
  const Product_Order_Head_line({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41,
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.only(
        left: 20,
        right: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
              text: "Product Name",
              color: Color(0xff00222F),
              fontSize: 16,
              FontWeightt: FontWeight.w400),
          CustomText(
              text: "Quantity",
              color: Color(0xff00222F),
              fontSize: 16,
              FontWeightt: FontWeight.w400),
        ],
      ),
    );
  }
}
