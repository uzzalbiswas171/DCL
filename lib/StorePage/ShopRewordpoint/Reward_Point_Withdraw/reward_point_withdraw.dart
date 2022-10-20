
import 'package:dcl/Custom/CustomButtomNavigationBar/custom_buttom_navigation_bar.dart';
import 'package:dcl/Custom/CustomButton/custom_button2.dart';
import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:dcl/Custom/CustomTextFromField/custom_text_from_field.dart';
import 'package:flutter/material.dart';
enum SingingCharacter { lafayette, jefferson ,thrd,fourth,Others}
class Reward_Point_Withdraw extends StatefulWidget {
  const Reward_Point_Withdraw({Key? key}) : super(key: key);

  @override
  State<Reward_Point_Withdraw> createState() => _Reward_Point_WithdrawState();
}

class _Reward_Point_WithdrawState extends State<Reward_Point_Withdraw> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  bool is_Mobile_Recharge = true;
  bool mony_checc = true;
  int Radio_value=1;
  String others = "others";
  TextEditingController _PhonController = TextEditingController();

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
     appBar: AppBar(
        elevation: 8,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black38,
              size: 22,
            )),
        title: CustomText(
            text: "Withdraw",
            color: Color(0xff00222F),
            fontSize: 16,
            FontWeightt: FontWeight.w400),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 32,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            is_Mobile_Recharge = !is_Mobile_Recharge;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: is_Mobile_Recharge == true
                                ? Color(0xff366BF1)
                                : Colors.black38,
                            borderRadius: BorderRadius.circular(11),
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                    "img_payment_method/mobail_recharge.png"),
                                height: 37,
                                width: 34,
                                color: Colors.white,
                              ),
                              CustomText(
                                  text: "Mobile Recharge",
                                  color: Colors.white,
                                  fontSize: 14,
                                  FontWeightt: FontWeight.w400),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            is_Mobile_Recharge = !is_Mobile_Recharge;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: is_Mobile_Recharge == true
                                ? Colors.black38
                                : Color(0xff366BF1),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                    "img_payment_method/cashbac.png"),
                                height: 37,
                                width: 34,
                                color: Colors.white,
                              ),
                              CustomText(
                                  text: "Cashback",
                                  color: Colors.white,
                                  fontSize: 14,
                                  FontWeightt: FontWeight.w400),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              ////////////////////////////////////mobile Recharge///////
              is_Mobile_Recharge==true?Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 520,
                width: double.infinity,
             color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: "Enter your Phone Number",
                        color: Colors.black26,
                        fontSize: 14,
                        FontWeightt: FontWeight.w400),
                    SizedBox(
                      height: 12,
                    ),
                    CustomTextFromField(
                      keyboardType: TextInputType.phone,
                        maxLines: 1,
                        suffixIcon: Icon(
                          Icons.phone_android,
                          size: 22,
                          color: Colors.grey,
                        ),
                        controller: _PhonController,
                        validator: (value) {},
                        color: Colors.white,
                        fontSize: 14,
                        hintText: "",
                        obscureText: false),
                    SizedBox(
                      height: 32,
                    ),
                    CustomText(
                      text: "Select Recharge Amount",
                      color: Colors.black26,
                      fontSize: 14,
                      FontWeightt: FontWeight.w400,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                  children: <Widget>[
                    ListTile(
                      title: CustomText(
                          text: "TK. 20",
                          color: Color(0xff00222F),
                          fontSize: 14,
                          FontWeightt: FontWeight.w400),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.lafayette,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: CustomText(
                          text: "TK. 40",
                          color: Color(0xff00222F),
                          fontSize: 14,
                          FontWeightt: FontWeight.w400),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: CustomText(
                          text: "TK. 60",
                          color: Color(0xff00222F),
                          fontSize: 14,
                          FontWeightt: FontWeight.w400),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.thrd,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: CustomText(
                          text: "TK. 80",
                          color: Color(0xff00222F),
                          fontSize: 14,
                          FontWeightt: FontWeight.w400),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.fourth,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: CustomText(
                          text: "Others",
                          color: Color(0xff00222F),
                          fontSize: 14,
                          FontWeightt: FontWeight.w400),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.Others,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                    SizedBox(height: 24,),
                    Center(child: CustomText(text: "TK. 0", color: Colors.black38, fontSize: 18, FontWeightt: FontWeight.w600)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Divider(color: Colors.black38, thickness: 2,height: 20,),
                    ),
                    // SizedBox(height: 40,),
                    // CustomButton2(buttonheight: 40,text: "Confirm", color: Colors.white, buttoncolor:Color(0xffFD6501), fontSize: 14, FontWeightt: FontWeight.w500),

                  ],
                ),

              ): Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 16,
                        ),
                          width: double.infinity,
                          height: 20,
                          alignment: Alignment.centerLeft,
                          child: CustomText(text: "Select Transaction Medium ", color: Colors.black38, fontSize: 14, FontWeightt: FontWeight.w400)),

                       Row(
                        children: [
                          Image(image: AssetImage("img_payment_method/bkash.png"),height: 40,width: 40,),
                          SizedBox(width: 10,),
                          CustomText(text: "Bkash", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w300)
                        ],
                      ),
                      SizedBox(height: 16,),
                      Row(
                        children: [
                          Image(image: AssetImage("img_payment_method/roket.png"),height: 40,width: 40,),
                          SizedBox(width: 10,),
                          CustomText(text: "Rocket", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w300)
                        ],
                      ),
                      SizedBox(height: 16,),
                      Row(
                        children: [
                          Image(image: AssetImage("img_payment_method/nagad.png"),height: 40,width: 40,),
                          SizedBox(width: 10,),
                          CustomText(text: "Nagad", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w300)
                        ],
                      ),
                      SizedBox(height: 16,),
                      Row(
                        children: [
                          Image(image: AssetImage("img_payment_method/upay.png"),height: 40,width: 40,),
                          SizedBox(width: 10,),
                          CustomText(text: "Upai", color: Color(0xff00222F), fontSize: 16, FontWeightt: FontWeight.w300)
                        ],
                      ),
                      SizedBox(height: 16,),
                    ],
                  ),
                ),
              ),
              /////////////////////////////////////mobile recharge/////////
              SizedBox(height: 40,),
              is_Mobile_Recharge==true?InkWell(
                  onTap: () {

                  },
                  child: CustomButton2(buttonheight: 40,text: "Confirm", color: Colors.white, buttoncolor:Color(0xffFD6501), fontSize: 14, FontWeightt: FontWeight.w500)):InkWell(
                  onTap: () {

                  },
                  child: CustomButton2(buttonheight: 40,text: "Send Request", color: Colors.white, buttoncolor:Color(0xffFD6501), fontSize: 14, FontWeightt: FontWeight.w500)),

              ],
          ),
        ),
      ),
    );
  }
}
