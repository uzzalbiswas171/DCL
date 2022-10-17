import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:flutter/material.dart';

class DhaaChoiceRewardPoint extends StatelessWidget {
DhaaChoiceRewardPoint({Key? key,required this.Totap_points}) : super(key: key);
     int Totap_points;

@override
  Widget build(BuildContext context) {
  double _progressValue=50;
    return Container(
     height: 190,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(11)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Expanded(
                  flex: 1,
                  child: CustomText(text: "Your Total Reward Points ", color: Colors.white, fontSize: 14, FontWeightt: FontWeight.w300)),

               Expanded(flex:1,child: Image(image: AssetImage("img/total_reward_points.png"),color: Color(0xffFD6501),height: 42,width: 42,)),
              Expanded(
                  flex: 1,
                  child: CustomText(text: "${Totap_points} pts", color: Colors.white, fontSize: 16, FontWeightt: FontWeight.w500)),
              SizedBox(height: 15,),
              Expanded(
                  flex: 1,
                  child: CustomText(
                      text: "Bronze ( Level 1 )", color: Colors.white, fontSize: 14, FontWeightt: FontWeight.w300)),
              Expanded(
                  flex: 2,
                  child: Container(
                   padding: EdgeInsets.symmetric(
                     horizontal: 20
                   ),
                    alignment: Alignment.center,
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.cyanAccent,
                      valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                      value: _progressValue,
                    ),
                  ),
              ),
            ],
          ),
    );
  }
}
