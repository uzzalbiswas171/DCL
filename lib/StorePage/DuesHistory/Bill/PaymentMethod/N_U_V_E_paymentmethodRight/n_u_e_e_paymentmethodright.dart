import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class N_U_V_E_paymentmethodRight extends StatelessWidget {
  const N_U_V_E_paymentmethodRight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 1,
      child: Container(
        height: 230,
       //  color: Colors.greenAccent,
        child: Column(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  showDialog(context: context, builder: (context){
                    return AlertDialog(title: Text("Payment method do not wor well"),);
                  });
                },
                child: Container(
                   // color: Colors.red,
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          image: DecorationImage(
                              image: AssetImage(
                                  "img_payment_method/nagad.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      CustomText(
                          text: "Nagad",
                          color: Color(0xff00222F),
                          fontSize: 16,
                          FontWeightt: FontWeight.w300),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  showDialog(context: context, builder: (context){
                    return AlertDialog(title: Text("Payment method do not wor well"),);
                  });
                },
                child: Container(
                  //    color: Colors.red,
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          image: DecorationImage(
                              image: AssetImage(
                                  "img_payment_method/upay.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      CustomText(
                          text: "Upai",
                          color: Color(0xff00222F),
                          fontSize: 16,
                          FontWeightt: FontWeight.w300),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                      child: InkWell(
                        onTap: () {
                          showDialog(context: context, builder: (context){
                            return AlertDialog(title: Text("Payment method do not wor well"),);
                          });
                        },
                        child: Container(
                    //    color: Colors.red,
                    child: Row(
                    children: [
                    Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          image: DecorationImage(
                              image: AssetImage(
                                  "img_payment_method/visa.png"),
                              fit: BoxFit.fill),
                        ),
                    ),
                    Text(
                        "Bank \nTransfer",
                        style: GoogleFonts.poppins(
                            color: Color(0xff00222F),
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
                      ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  showDialog(context: context, builder: (context){
                    return AlertDialog(title: Text("Payment method do not wor well"),);
                  });
                },
                child: Container(
                  //  color: Colors.red,
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          image: DecorationImage(
                              image: AssetImage(
                                  "img_payment_method/emi.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      CustomText(
                          text: "EMI",
                          color: Color(0xff00222F),
                          fontSize: 16,
                          FontWeightt: FontWeight.w300),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
