
import 'package:dcl/Custom/CustomerSlidemenue/customer_slidemenue.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomerSideMenu extends StatelessWidget {
  const CustomerSideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child:Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width*0.8,
        child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 104,
                width: double.infinity,
                color: Color(0xffFD6501),
                child: Row(
//  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 58,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)
                      ),
                      child: Container(
                        height: 41,
                        width: 42,

                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(image: AssetImage("img/user.png"),fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    SizedBox(width: 18,),
                    Container(
                      height: 45,
                      width: 140,
                      child: Column(
                        children: [
                          Text("Md. Abdul Hamid",
                            style: GoogleFonts.poppins(fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF)
                            ),),
                          Text("Gulshan 1, Dhaka 1212",
                            style: GoogleFonts.poppins(fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffFFFFFF)
                            ),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              CustomerSlidemenue(name: "Home", icon: Icons.home_outlined),
              CustomerSlidemenue(name: "Location Map", icon: Icons.location_on_outlined),
              CustomerSlidemenue(name: "QR Code & PIN Number", icon: Icons.qr_code_scanner),
              CustomerSlidemenue(name: "Refer Dhaka Choice App", icon: Icons.supervisor_account_outlined),
              CustomerSlidemenue(name: "Cash Withdraw", icon: Icons.wine_bar),
              CustomerSlidemenue(name: "Collected Reward Points ", icon: Icons.add_shopping_cart_sharp),
              CustomerSlidemenue(name: "Payment Method", icon: Icons.payment_outlined),
              CustomerSlidemenue(name: "Create Order Sheet", icon: Icons.add_box),
              CustomerSlidemenue(name: "24/7 Support", icon: Icons.watch_later_outlined),
              CustomerSlidemenue(name: "Feedback", icon: Icons.feedback_outlined),
              CustomerSlidemenue(name: "Log Out", icon: Icons.logout),


            ],
          ),
        ),
      ) ,
    );
  }
}







