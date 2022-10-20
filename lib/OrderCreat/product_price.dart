import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:flutter/material.dart';

class Product_Price extends StatelessWidget {
   Product_Price({Key? key,required this.Product_name,this.controller}) : super(key: key);
  String Product_name;
   final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 19, right: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
              text: "${Product_name}",
              color: Color(0xff00222F),
              fontSize: 14,
              FontWeightt: FontWeight.w400),
          Row(
            children: [
              Container(
                width: 100,
                alignment: Alignment.center,
                child: TextFormField(
                  controller: controller,
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    hintText: "2",
                    hintStyle: TextStyle(
                      fontSize: 16,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              CustomText(
                  text: "kg",
                  color: Color(0xff00222F),
                  fontSize: 14,
                  FontWeightt: FontWeight.w400),
            ],
          )
        ],
      ),
    );
  }
}
