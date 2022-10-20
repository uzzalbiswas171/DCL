import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:flutter/material.dart';

class Paymentmethod extends StatefulWidget {
  const Paymentmethod({Key? key}) : super(key: key);

  @override
  State<Paymentmethod> createState() => _PaymentmethodState();
}

class _PaymentmethodState extends State<Paymentmethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,size: 22,color: Colors.black45,),),
        title: CustomText(text: "Payment Methods", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w400),
        
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child:Row(
                    children: [
                      Image(image: AssetImage("img_payment_method/bkash.png"),height: 40,width: 40,),
                      SizedBox(width: 10,),
                      CustomText(text: "Bkash", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w300)
                    ],
                  ),),
                    Expanded(child:Row(
                      children: [
                        Image(image: AssetImage("img_payment_method/roket.png"),height: 40,width: 40,),
                        SizedBox(width: 10,),
                        CustomText(text: "Rocket", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w300)
                      ],
                    ),),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(child:Row(
                      children: [
                        Image(image: AssetImage("img_payment_method/nagad.png"),height: 40,width: 40,),
                        SizedBox(width: 10,),
                        CustomText(text: "Nagad", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w300)
                      ],
                    ),),
                    Expanded(child:Row(
                      children: [
                        Image(image: AssetImage("img_payment_method/upay.png"),height: 40,width: 40,),
                        SizedBox(width: 10,),
                        CustomText(text: "Upai", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w300)
                      ],
                    ),),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(child:Row(
                      children: [
                        Image(image: AssetImage("img_payment_method/cash.png"),height: 40,width: 40,),
                        SizedBox(width: 10,),
                        CustomText(text: "Cash", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w300)
                      ],
                    ),),
                    Expanded(child:Row(
                      children: [
                        Image(image: AssetImage("img_payment_method/emi.png"),height: 40,width: 40,),
                        SizedBox(width: 10,),
                        CustomText(text: "EMI", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w300)
                      ],
                    ),),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                CustomText(text: "Bank Transfer", color: Color(0xff000000), fontSize: 16, FontWeightt: FontWeight.w500),
                SizedBox(
                  height: 24,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image(image: AssetImage("img_payment_method/visa.png"),height: 40,width: 40,),
                        SizedBox(width: 10,),
                        CustomText(text: "Visa Card", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w300)
                      ],
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      children: [
                        Image(image: AssetImage("img_payment_method/mastercard.png"),height: 40,width: 40,),
                        SizedBox(width: 10,),
                        CustomText(text: "Master Card", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w300)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
