import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:flutter/material.dart';

class PayBill_PayAble_Amount extends StatelessWidget {
  const PayBill_PayAble_Amount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 316,width: double.infinity,
      decoration: BoxDecoration(
      ),

      child: Card(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 43,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child:  Center(
                    child: CustomText(text: "Payable Amount", color: Color(0xffFD6501), fontSize: 16, FontWeightt: FontWeight.w500, )
                ),
              ),
              Container(height: 1,color: Colors.black38,),
              Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: CustomText(text: "Air Conditioner", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w300),
                        )),
                    Container(width: 1,color: Colors.black38,),
                    Expanded(
                        flex: 2,
                        child: Container(
                          child: Row(children: [
                            CustomText(text: "TK.", color: Color(0xff00222F), fontSize: 14, FontWeightt: FontWeight.w500),
                            CustomText(text: "{2000}", color: Color(0xff00222F), fontSize: 14, FontWeightt: FontWeight.w500),
                          ]),
                        )),
                  ],
                ),
              ),
              Container(height: 1,color: Colors.black38,),
              Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: CustomText(text: "Air Conditioner", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w300),
                        )),
                    Container(width: 1,color: Colors.black38,),
                    Expanded(
                        flex: 2,
                        child: Container(
                          child: Row(children: [
                            CustomText(text: "TK.", color: Color(0xff00222F), fontSize: 14, FontWeightt: FontWeight.w500),
                            CustomText(text: "{2000}", color: Color(0xff00222F), fontSize: 14, FontWeightt: FontWeight.w500),
                          ]),
                        )),
                  ],
                ),
              ),
              Container(height: 1,color: Colors.black38,),
              Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: CustomText(text: "Air Conditioner", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w300),
                        )),
                    Container(width: 1,color: Colors.black38,),
                    Expanded(
                        flex: 2,
                        child: Container(
                          child: Row(children: [
                            CustomText(text: "TK.", color: Color(0xff00222F), fontSize: 14, FontWeightt: FontWeight.w500),
                            CustomText(text: "{2000}", color: Color(0xff00222F), fontSize: 14, FontWeightt: FontWeight.w500),
                          ]),
                        )),
                  ],
                ),
              ),
              Container(height: 1,color: Colors.black38,),
              Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: CustomText(text: "Air Conditioner", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w300),
                        )),
                    Container(width: 1,color: Colors.black38,),
                    Expanded(
                        flex: 2,
                        child: Container(
                          child: Row(children: [
                            CustomText(text: "TK.", color: Color(0xff00222F), fontSize: 14, FontWeightt: FontWeight.w500),
                            CustomText(text: "{2000}", color: Color(0xff00222F), fontSize: 14, FontWeightt: FontWeight.w500),
                          ]),
                        )),
                  ],
                ),
              ),
              Container(height: 1,color: Colors.black38,),
              Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: CustomText(text: "Air Conditioner", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w300),
                        )),
                    Container(width: 1,color: Colors.black38,),
                    Expanded(
                        flex: 2,
                        child: Container(
                          child: Row(children: [
                            CustomText(text: "TK.", color: Color(0xff00222F), fontSize: 14, FontWeightt: FontWeight.w500),
                            CustomText(text: "{2000}", color: Color(0xff00222F), fontSize: 14, FontWeightt: FontWeight.w500),
                          ]),
                        )),
                  ],
                ),
              ),
              Container(height: 1,color: Colors.black38,),
            ],
          ),
        ),
      ),
    );
  }
}
