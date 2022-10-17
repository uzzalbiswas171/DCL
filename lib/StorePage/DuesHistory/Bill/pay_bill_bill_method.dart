import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:dcl/StorePage/DuesHistory/Bill/PaymentMethod/B_C_R_E/b_c_r_e.dart';
import 'package:dcl/StorePage/DuesHistory/Bill/PaymentMethod/N_U_V_E_paymentmethodRight/n_u_e_e_paymentmethodright.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pay_Bill_Bill_Method extends StatelessWidget {
  const Pay_Bill_Bill_Method({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      //  color: Colors.greenAccent,
      child: Card(
        //   color: Colors.yellow,
        elevation: 8,
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Center(
                child: CustomText(
              text: "Payment Methods",
              color: Color(0xffFD6501),
              fontSize: 16,
              FontWeightt: FontWeight.w500,
            )),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                B_C_R_E_paytment_left(),
                N_U_V_E_paymentmethodRight(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
