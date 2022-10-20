import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:flutter/material.dart';

class DhaaChoiceRewardPoint extends StatelessWidget {
DhaaChoiceRewardPoint({Key? key,required this.Totap_points,required this.value}) : super(key: key);
     int Totap_points;
     double? value;

@override
  Widget build(BuildContext context) {
  double _progressValue=50;
    return Container(
      margin: EdgeInsets.only(left: 20,right: 20),
     height: 190,
      width: double.infinity,padding: EdgeInsets.only(
      top: 16,
      bottom: 16,
    ),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(11)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(text: "Your Total Reward Points ", color: Colors.white, fontSize: 14, FontWeightt: FontWeight.w300),
              Image(image: AssetImage("img/total_reward_points.png"),color: Color(0xffFD6501),height: 42,width: 42,),
              CustomText(text: "${Totap_points} pts", color: Colors.white, fontSize: 16, FontWeightt: FontWeight.w500),
              SizedBox(height: 15,),
              CustomText(
                  text: "Bronze ( Level 1 )", color: Colors.white, fontSize: 14, FontWeightt: FontWeight.w300),
              SizedBox(height: 8,),
              Container(
               padding: EdgeInsets.symmetric(
                 horizontal: 20
               ),
                alignment: Alignment.center,
                child: LinearProgressIndicator(
                 color: Colors.white,
                  backgroundColor: Colors.grey,
                  minHeight: 10,
                  value: value,
                ),
              ),

            ],
          ),
    );
  }
}
