import 'package:dcl/Custom/CustomButton/custom_button.dart';
import 'package:dcl/RegistorPageDemo/Login/login_page.dart';
import 'package:dcl/RegistorPageDemo/Registration/registration.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistorPageDemo extends StatefulWidget {
  const RegistorPageDemo({Key? key}) : super(key: key);

  @override
  State<RegistorPageDemo> createState() => _RegistorPageDemoState();
}

class _RegistorPageDemoState extends State<RegistorPageDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffffffff),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back,size: 24,color: Colors.black,)),
      ),
      body:Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 140,
              ),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("img/d_logo.png"),fit: BoxFit.fill)
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 32,
              ),
              alignment: Alignment.center,
              height: 40,
              width: double.infinity,
              child: Text(
                'Dhaka Choice Discount App',
                style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 44,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Savings your money from our apps',
                  style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Sign_In_Page(),));
              },
              child: CustomButton(
                Buttonnamr: "Sign In",
              ),
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>  REgistrationPage(),));

              },
              child: CustomButton(

                Buttonnamr: "Registration",
              ),
            ),

          ],
        ),
      ) ,
    );
  }
}
