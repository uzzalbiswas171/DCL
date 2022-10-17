import 'package:dcl/Custom/CustomButtomNavigationBar/custom_buttom_navigation_bar.dart';
import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:dcl/Custom/DhaaChoiceLogo/dhaa_choice_logo.dart';
import 'package:dcl/StorePage/DuesHistory/Bill/pay_bill_bill_method.dart';
import 'package:dcl/StorePage/DuesHistory/Bill/pay_bill_img_section.dart';
import 'package:dcl/StorePage/DuesHistory/Bill/pay_bill_shope_address.dart';
import 'package:dcl/StorePage/DuesHistory/Bill/pay_billpayable_amount.dart';
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


              Pay_Bill_Img_Section(
                discount_value: 50,    //15% OFF
              ),

              SizedBox(height: 4,),
              Container(
                height: 70,
                width: double.infinity,
                color: Color(0xffECF1F3),
                child: Column(
                  children: [
                    Center(
                        child: CustomText(text: "MK Electronics Shop", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w500, )
                    ),
                    SizedBox(height: 8,),
                    Center(
                        child: CustomText(text: "Mobile No: 01786224580", color: Color(0xff00222F), fontSize: 14, FontWeightt: FontWeight.w400, )
                    ),

                  ],
                ),
              ),
            Pay_Bill_Shope_Address(
                shpe_Address:"1A 005, 1st Floor Jamuna Future Park KA-244, Kuril, Progoti Shoromi, Dhaka 1229",
              ),
              SizedBox(height: 24,),
              PayBill_PayAble_Amount(),
              SizedBox(height: 40,),
              Center(
                  child: CustomText(text: "Enter the amount you want to pay", color: Colors.black, fontSize: 16, FontWeightt: FontWeight.w300, ),
              ),
              SizedBox(height: 32,),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(text: "Tk.", color: Colors.black, fontSize: 16, FontWeightt: FontWeight.w300, ),
                          Container(
                            width: 100,
                            height: 40,
                            padding: EdgeInsets.only(
                              bottom: 7,
                            ),
                            alignment: Alignment.centerLeft,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "1000",
                              border: InputBorder.none
                              ),
                            ),
                          )
                        ],
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                        left: 50,
                      ),
                    ),
                    Container(
                      height: 2,
                      width: 100,
                      color: Colors.black45,
                    )
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Pay_Bill_Bill_Method(),


            ],
          ),
        ),
      ),
    );
  }
}
