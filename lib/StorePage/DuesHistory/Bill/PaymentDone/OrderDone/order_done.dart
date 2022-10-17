import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:flutter/material.dart';

class OrderDone extends StatelessWidget {
  OrderDone({Key? key,required this.Isdone}) : super(key: key);
   bool ? Isdone;
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 220,
      width: double.infinity,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: Color(Isdone==true?0xffFF883A:0xffFF4141),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(Isdone==true?"img/order_accept.PNG":"img_payment_method/cancle.PNG"),
            height: 70,
            width: 80,
            fit: BoxFit.fill,
          ),
          Container(
            height: 54,
            width: 220,
            child: CustomText(
                text: Isdone==true?"Your Order has been accepted !":"Oops! Your Order has been cancelled.",
                color: Colors.white,
                fontSize: 20,
                FontWeightt: FontWeight.w500),
          ),
          SizedBox(
            height: 27,
          ),
          Container(
            width: double.infinity,
            height: 55,
            color: Colors.white,
            alignment: Alignment.center,
            child: Container(
              height: 46,
              width: 213,
              alignment: Alignment.center,
              child: CustomText(text: Isdone==true ?"You can collect your order in 20 minutes later.":"Please try again or you can search for another shop.", color: Color(0xff00222F), fontSize: 14, FontWeightt: FontWeight.w300),
            ),
          )
        ],
      ),
    );
  }
}
