import 'package:dcl/Custom/CustomButton/custom_button.dart';
import 'package:dcl/RegistorPageDemo/CreatNewPawsword/create_new_password.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyDemo extends StatefulWidget {
  const VerifyDemo({Key? key}) : super(key: key);

  @override
  State<VerifyDemo> createState() => _VerifyDemoState();
}

class _VerifyDemoState extends State<VerifyDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 6,
        backgroundColor: Color(0xffffffff),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 24,
              color: Colors.black,
            )),
        centerTitle: true,
        title: Text(
          'Forgot Password',
          style: GoogleFonts.rubik(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black38,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
           children: [
             Container(
               margin: EdgeInsets.only(
                 top: 38,
                 bottom: 20,
               ),
               height: 200,
               width: 177,
               decoration: BoxDecoration(
                   image: DecorationImage(
                       image: AssetImage("img/verify.png"),
                       fit: BoxFit.fill)),
             ),
             Container(
               margin: EdgeInsets.only(
                 bottom: 78,
               ),
               height: 54,
               width: 320,
               alignment: Alignment.center,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(
                     'Please enter 4 digit code to',
                     style: GoogleFonts.rubik(
                       fontSize: 18,
                       fontWeight: FontWeight.w500,
                       color: Colors.black38,
                     ),
                   ),
                   Text(
                     '01756320145',
                     style: GoogleFonts.rubik(
                       fontSize: 18,
                       fontWeight: FontWeight.w500,
                       color: Colors.black38,
                     ),
                   ),
                 ],
               ),
             ),
             Container(
               height: 60,
               width: double.infinity,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [

                   Container(
                     height: 55,
                     width: 62,
                     alignment: Alignment.center,
                     child: Column(
                       children: [
                         Container(
                           margin: EdgeInsets.only(
                             left: 22,
                           ),
                           // color: Colors.green,
                           child: TextFormField(
                             style: TextStyle(
                                 fontSize: 26,
                                 fontWeight: FontWeight.w800,
                                 color: Colors.black
                             ),
                             decoration: InputDecoration(
                                 hintText: "4",
                                 hintStyle: TextStyle(
                                     fontSize: 26,
                                     fontWeight: FontWeight.w800,
                                     color: Colors.black
                                 )
                             ),
                           ),
                           padding: EdgeInsets.only(

                           ),

                         ),
                         Container(
                           color: Colors.red,
                           height: 1,
                           width: 50,
                         )
                       ],
                     ),
                   ),
                   Container(
                     height: 55,
                     width: 62,
                     alignment: Alignment.center,
                     child: Column(
                       children: [
                         Container(
                           margin: EdgeInsets.only(
                             left: 22,
                           ),
                           // color: Colors.green,
                           child: TextFormField(
                             style: TextStyle(
                                 fontSize: 26,
                                 fontWeight: FontWeight.w800,
                                 color: Colors.black
                             ),
                             decoration: InputDecoration(
                                 hintText: "4",
                                 hintStyle: TextStyle(
                                     fontSize: 26,
                                     fontWeight: FontWeight.w800,
                                     color: Colors.black
                                 )
                             ),
                           ),
                           padding: EdgeInsets.only(

                           ),

                         ),
                         Container(
                           color: Colors.red,
                           height: 1,
                           width: 50,
                         )
                       ],
                     ),
                   ),
                   Container(
                     height: 55,
                     width: 62,
                     alignment: Alignment.center,
                     child: Column(
                       children: [
                         Container(
                           margin: EdgeInsets.only(
                             left: 22,
                           ),
                           // color: Colors.green,
                           child: TextFormField(
                             style: TextStyle(
                                 fontSize: 26,
                                 fontWeight: FontWeight.w800,
                                 color: Colors.black
                             ),
                             decoration: InputDecoration(
                                 hintText: "4",
                                 hintStyle: TextStyle(
                                     fontSize: 26,
                                     fontWeight: FontWeight.w800,
                                     color: Colors.black
                                 )
                             ),
                           ),
                           padding: EdgeInsets.only(

                           ),

                         ),
                         Container(
                           color: Colors.red,
                           height: 1,
                           width: 50,
                         )
                       ],
                     ),
                   ),
                   Container(
                     height: 55,
                     width: 62,
                     alignment: Alignment.center,
                     child: Column(
                       children: [
                         Container(
                           margin: EdgeInsets.only(
                             left: 22,
                           ),
                           // color: Colors.green,
                           child: TextFormField(
                             style: TextStyle(
                                 fontSize: 26,
                                 fontWeight: FontWeight.w800,
                                 color: Colors.black
                             ),
                             decoration: InputDecoration(
                                 hintText: "4",
                                 hintStyle: TextStyle(
                                     fontSize: 26,
                                     fontWeight: FontWeight.w800,
                                     color: Colors.black
                                 )
                             ),
                           ),
                           padding: EdgeInsets.only(

                           ),

                         ),
                         Container(
                           color: Colors.red,
                           height: 1,
                           width: 50,
                         )
                       ],
                     ),
                   ),

                 ],
               ),
             ),
             SizedBox(height: 40,),
             Container(
               height: 21,
               width: double.infinity,
               alignment: Alignment.centerLeft,
               child: Text(
                 'Resend Code',
                 style: GoogleFonts.poppins(
                   fontSize: 14,
                   fontWeight: FontWeight.w600,
                   color: Color(0xff00222F),
                 ),
               ),
             ),
             SizedBox(height: 64,),
             InkWell(
               ///////////////"Sign In"//////
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>  CreatNewPawsword(),));
               },
               child: CustomButton(
                 Buttonnamr: "Verify",
               ),
             ),
           ],
          ),
        ),
      ),
    );
  }
}
