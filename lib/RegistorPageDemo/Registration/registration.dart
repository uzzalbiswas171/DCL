import 'package:dcl/Custom/CustomButton/custom_button.dart';
import 'package:dcl/Custom/CustomTextFromField/custom_text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class REgistrationPage extends StatefulWidget {
  const REgistrationPage({Key? key}) : super(key: key);

  @override
  State<REgistrationPage> createState() => _REgistrationPageState();
}

class _REgistrationPageState extends State<REgistrationPage> {
  String? phone, pass;
  bool obscureext = true;
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Color(0xffffffff),
     appBar: AppBar(
       elevation: 0,
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
     ),
     body: Container(
       height: double.infinity,
       width: double.infinity,
       padding: EdgeInsets.only(
         left: 20,
         right: 20,
       ),
       child: SingleChildScrollView(
         child: Form(
           key: _formkey,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Container(
                 height: 100,
                 width: 100,
                 decoration: BoxDecoration(
                     image: DecorationImage(
                         image: AssetImage("img/d_logo.png"),
                         fit: BoxFit.fill)),
               ),
               SizedBox(
                 height: 24,
               ),
               Container(
                 height: 30,
                 width: double.infinity,
                 alignment: Alignment.center,
                 child: Text(
                   'Dhaka Choice Discount App',
                   style: GoogleFonts.poppins(
                     fontSize: 20,
                     fontWeight: FontWeight.w500,
                     color: Color(0xff00222F),
                   ),
                 ),
               ),
               SizedBox(
                 height: 32,
               ),
               Container(
                 height: 24,
                 width: double.infinity,
                 alignment: Alignment.centerLeft,
                 child: Text(
                   'Name',
                   style: GoogleFonts.poppins(
                     fontSize: 16,
                     fontWeight: FontWeight.w400,
                     color: Color(0xff00222F),
                   ),
                 ),
               ),
               SizedBox(
                 height: 8,
               ),
               Container(
                 height: 80,
                 child: CustomTextFromField(
                     obscureText: false,
                     hintText: "Enter your name",
                     controller: _phoneController,
                     validator: (value) {
                       if (value!.isEmpty) {
                         return "Wrong Mobail Number";
                       }
                     },
                     color: Colors.black38,
                     fontSize: 14),
               ),
               SizedBox(
                 height: 30,
               ),
               Container(
                 height: 24,
                 width: double.infinity,
                 alignment: Alignment.centerLeft,
                 child: Text(
                   'Mobile Number',
                   style: GoogleFonts.poppins(
                     fontSize: 16,
                     fontWeight: FontWeight.w400,
                     color: Color(0xff00222F),
                   ),
                 ),
               ),
               SizedBox(
                 height: 8,
               ),
               Container(
                 height: 80,
                 alignment: Alignment.centerLeft,
                 child: CustomTextFromField(
                   obscureText:  obscureext,
                   hintText: "+880 1234567891",
                   controller: _passwordController,
                   validator: (value) {
                     if (value!.isEmpty) {
                       return phone = "Wrong Mobail Number";
                     }
                   },
                   color: Colors.black38,
                   fontSize: 14,
                   suffixIcon: Container(
                     margin: EdgeInsets.only(right: 10),
                     child: IconButton(
                         onPressed: () {
                           setState(() {
                             obscureext = !obscureext;
                           });
                         },
                         icon: Icon(obscureext == false
                             ? Icons.visibility_off
                             : Icons.visibility)),
                   ),
                 ),
               ),
               SizedBox(
                 height: 30,
               ),
               Container(
                 height: 24,
                 width: double.infinity,
                 alignment: Alignment.centerLeft,
                 child: Text(
                   'Address',
                   style: GoogleFonts.poppins(
                     fontSize: 16,
                     fontWeight: FontWeight.w400,
                     color: Color(0xff00222F),
                   ),
                 ),
               ),
               SizedBox(
                 height: 6,
               ),
               Container(
             //    color: Colors.red,
                 height: 128,
                 alignment: Alignment.centerLeft,
                 child: CustomTextFromField(
                   maxLines: 4,
                   obscureText:  true,
                   hintText: "Enter address",
                   controller: _addressController,
                   validator: (value) {
                     if (value!.isEmpty) {
                       return  "Invalid Address";
                     }
                   },
                   color: Colors.black38,
                   fontSize: 14,
                 ),
               ),
               SizedBox(
                 height: 32,
               ),
               Container(
                 height: 24,
                 width: double.infinity,
                 alignment: Alignment.centerLeft,
                 child: Text(
                   'Attach Photo',
                   style: GoogleFonts.poppins(
                     fontSize: 16,
                     fontWeight: FontWeight.w400,
                     color: Color(0xff00222F),
                   ),
                 ),
               ),
               SizedBox(
                 height: 8,
               ),
               Container(
                 margin: EdgeInsets.only(
                   top: 8,
                 ),
             //    color: Colors.red,
                 height: 60,
                 width: double.infinity,
                 child:Row(
                   children: [
                   Expanded(
                     flex:1,
                     child: InkWell(
                       onTap: (){


                       },
                       child: Container(
                         margin: EdgeInsets.only(
                           right: 10,
                         ),
                       decoration: BoxDecoration(
                         color: Colors.grey,
                         borderRadius: BorderRadius.circular(11),
                       ),
                       height: 60,
                       width: 87,
                         alignment: Alignment.center,
                         child: Text(
                           'Choose',
                           style: GoogleFonts.poppins(
                             fontSize: 14,
                             fontWeight: FontWeight.w400,
                             color: Color(0xff00222F),
                           ),
                         ),
                       ),
                     ),
                   ),
                     Expanded(
                       flex:2,
                       child: Container(
                         decoration: BoxDecoration(
                           color: Colors.grey,
                           borderRadius: BorderRadius.circular(11),
                         ),
                         padding: EdgeInsets.only(left: 10),
                         height: 60,
                         width: 87,
                         alignment: Alignment.centerLeft,
                         child: Text(
                           'No file selected',
                           style: GoogleFonts.poppins(
                             fontSize: 14,
                             fontWeight: FontWeight.w400,
                             color: Color(0xff00222F),
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
               SizedBox(
                 height: 56,
               ),
               InkWell(
                 ///////////////"Sign In"//////
                 onTap: () {
                   if (_formkey.currentState!.validate()) {
                     print(
                       "Submit Sucess full",
                     );

                   }
                 },
                 child: CustomButton(
                   Buttonnamr: "Register",
                 ),
               ),
               SizedBox(
                 height: 16,
               ),

               Container(
                 height: 48,
                 width: double.infinity,
                 child: Row(
                   children: [
                     Container(
                       margin: EdgeInsets.only(
                         right: 18,
                       ),
                       height: 25,
                       width: 28,
                       child: Icon(Icons.check_box,size: 25,color: Colors.grey,),
                     ),
                     Container(
                      // color: Colors.green,
                       height: 48,
                     //  width: 280,
                       width: MediaQuery.of(context).size.width*0.7,
                       child: Row(
                         children: [
                           Container(
                             height: 48,
                             padding: EdgeInsets.only(
                               top: 10,
                             ),
                             child: Text("I agree with",style: TextStyle(
                               fontSize: 14,
                               fontWeight: FontWeight.w400,
                             //  color: Colors.red,
                             ),),
                           ),
                           Container(
                             height: 48,
                             width: 200,
                          //   color: Colors.red,
                             padding: EdgeInsets.only(
                               top: 10,
                               left: 3
                             ),
                             child: Text("Terms & Conditions and Privacy Policy",style: TextStyle(
                               fontSize: 14,
                               color: Colors.red,
                               fontWeight: FontWeight.w400,
                             ),),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
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
