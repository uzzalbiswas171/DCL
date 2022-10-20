

import 'package:dcl/Custom/CustomText/customtext2.dart';
import 'package:flutter/material.dart';

class CollectRedardPoint extends StatelessWidget {
  CollectRedardPoint({Key? key,required this.Adderss,required this.backgroundImage,required this.RE_points}) : super(key: key);
String Adderss;
  final ImageProvider? backgroundImage;
  double RE_points;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
        ),
        margin: EdgeInsets.only(top: 20),
        height: 100,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              //////////////collect reward point//////////
              flex: 2,
              child: CircleAvatar(
                radius: 21,
                backgroundImage: backgroundImage,
              ),
            ),
            SizedBox(width: 5,),
            Expanded(
              flex: 6,
              child: Container(
                //  color: Colors.pink,

                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.start,
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bismillah store",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Grocery-Retailer",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black38,
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        children: [
                          Icon(
                              Icons.location_on_outlined),
                          Container(
                            height: 42,
                            width: 130,
                            child: CustomText2(text: "${Adderss}", color:Colors.black38, fontSize: 14, FontWeightt: FontWeight.w400),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(),
                height: 100,
                width: 70,
                color: Colors.white,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      child: Image.asset("img/rp.PNG"),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Points : ${RE_points}",
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
