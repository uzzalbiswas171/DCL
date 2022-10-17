import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:dcl/StorePage/DuesHistory/Bill/PaymentDone/paymentdone.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class B_C_R_E_paytment_left extends StatelessWidget {
  const B_C_R_E_paytment_left({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                  },);
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
                        ),
                        child: Icon(Icons.payments_outlined,size: 42,color: Colors.red,),
                      ),
                      Text(
                        "Cash on\ndelivery",
                        style: GoogleFonts.rubik(
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
                 Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentDone(),));
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
                              image: AssetImage("img_payment_method/bkash.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      CustomText(
                          text: "Bkash",
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
                              image: AssetImage("img_payment_method/cash.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      CustomText(
                          text: "Cash",
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
                              image: AssetImage("img_payment_method/roket.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      CustomText(
                          text: "Rocket",
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
