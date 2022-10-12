import 'package:dcl/Custom/CustomButtomNavigationBar/custom_buttom_navigation_bar.dart';
import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:dcl/Custom/DhaaChoiceLogo/dhaa_choice_logo.dart';
import 'package:flutter/material.dart';

class Bill_Pay_page extends StatefulWidget {
  const Bill_Pay_page({Key? key}) : super(key: key);

  @override
  State<Bill_Pay_page> createState() => _Bill_Pay_pageState();
}

class _Bill_Pay_pageState extends State<Bill_Pay_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: CustomButtomNavigationBar(
            home_color: Colors.white,
            home_icon_color: Colors.grey,
            user_color: Colors.white,
            user_icon_color: Colors.grey,
            message_color: Colors.white,
            message_icon_color: Colors.grey,
            location_color: Colors.white,
            location_icon_color: Colors.grey),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: InkWell(
          onTap: () {},
          child: Icon(
            Icons.arrow_back,
            size: 25,
            color: Colors.black45,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20,right: 20),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              DhaaChoiceLogo(),
              SizedBox(height: 24,),
              Center(
                child: CustomText(text: "MK Electronics Shop", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w500, )
              ),
              SizedBox(height: 10,),
              Center(
                  child: CustomText(text: "Electronics - Retailer", color: Color(0xff00222F), fontSize: 14, FontWeightt: FontWeight.w400, )
              ),
              SizedBox(height: 24,),
              Container(
                height: 166,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(11),
                  image: DecorationImage(image: AssetImage("img/card.png"),fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 4,),
              Center(
                  child: CustomText(text: "MK Electronics Shop", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w500, )
              ),
              SizedBox(height: 8,),
              Center(
                  child: CustomText(text: "Mobile No: 01786224580", color: Color(0xff00222F), fontSize: 14, FontWeightt: FontWeight.w400, )
              ),
              Center(
                  child: CustomText(text: "Rahman Gazi", color: Colors.black38, fontSize: 16, FontWeightt: FontWeight.w400, )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
