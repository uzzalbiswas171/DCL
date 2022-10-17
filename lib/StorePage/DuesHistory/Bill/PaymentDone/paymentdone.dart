import 'package:dcl/Custom/CustomButtomNavigationBar/custom_buttom_navigation_bar.dart';
import 'package:dcl/Custom/CustomButton/custom_button2.dart';
import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:dcl/StorePage/DuesHistory/Bill/PaymentDone/OrderDone/order_done.dart';
import 'package:dcl/StorePage/DuesHistory/Bill/PaymentDone/PaymentRecit/paymentreit.dart';
import 'package:flutter/material.dart';

class PaymentDone extends StatefulWidget {
  const PaymentDone({Key? key}) : super(key: key);

  @override
  State<PaymentDone> createState() => _PaymentDoneState();
}

class _PaymentDoneState extends State<PaymentDone> {
  bool isdone = true;

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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(
                    "img/payment_successfull.PNG",
                  ),
                  height: 75,
                  width: 75,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 31,
                ),
                CustomText(
                  text: isdone==true?"Thank You":"Ops!",
                  color: Color(0xff0D840B),
                  fontSize: 30,
                  FontWeightt: FontWeight.w500,
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  height: 50,
                  width: 320,
                  child: CustomText(
                      text: isdone==true?"Your payment has been successfully completed.":"Your payment is not completed.!",
                      color: Color(0xff00222F),
                      fontSize: 16,
                      FontWeightt: FontWeight.w400),
                ),
                SizedBox(
                  height: 24,
                ),

                InkWell(
                    onTap: () {
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          title: Text("Neet to connect API"),
                        );
                      });
                    },
                    child: isdone==true?PaymentRecit():Container(),
                ),

                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isdone = !isdone;
                    });
                  },
                  child: OrderDone(Isdone: isdone,),

                ),
                SizedBox(
                  height: 40,
                ),
                CustomButton2(
                  text: "Exit",
                  buttonheight: 40,
                  color: Colors.white,
                  buttoncolor: Color(0xffFA0303),
                  fontSize: 14,
                  FontWeightt: FontWeight.w500,
                ),
                SizedBox(
                  height: 24,
                ),
                CustomButton2(
                  text: "Continue Shopping",
                  buttonheight: 40,
                  buttoncolor: Colors.white,
                  color: Color(0xffFA0303),
                  fontSize: 14,
                  FontWeightt: FontWeight.w500,
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
