import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:flutter/material.dart';

class Pay_Bill_Img_Section extends StatelessWidget {
  Pay_Bill_Img_Section({Key? key,this.discount_value}) : super(key: key);
  int ? discount_value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 166,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(11),
        // image: DecorationImage(image: AssetImage("img/card.png"),fit: BoxFit.cover),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              image: DecorationImage(image: AssetImage("img/shop.png"),fit: BoxFit.cover),
            ),
          ),
          Positioned(
              child: Container(
                padding: EdgeInsets.only(
                  right: 20
                ),
                height: 80,
                  width: 80,
                decoration: BoxDecoration(
                    color: Color(0xffE90000),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(100),
                    topLeft: Radius.circular(11),
                  ),
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(text: "${discount_value}", color: Colors.white, fontSize: 14, FontWeightt: FontWeight.w600),
                        CustomText(text: "%", color: Colors.white, fontSize: 14, FontWeightt: FontWeight.w600),

                      ],
                    ),
                    CustomText(text: "OFF", color: Colors.white, fontSize: 14, FontWeightt: FontWeight.w600),
                  ],
                ) ,
              ),
          ),
        ],
      ),
    );
  }
}
