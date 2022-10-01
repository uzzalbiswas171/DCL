import 'package:dcl/Custom/CustomButton/custom_button.dart';
import 'package:dcl/Custom/CustomTextFromField/custom_text_from_field.dart';
import 'package:dcl/RegistorPageDemo/VerifyDemo/verify_demo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController _phoneController=TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          child: Form(
            key:_formkey ,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 38,
                    bottom: 20,
                  ),
                  height: 193,
                  width: 249,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("img/forgetpass.png"), fit: BoxFit.fill)),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 38,
                  ),
                  height: 55,
                  width: 320,
                  alignment: Alignment.center,
                  child: Text(
                    'Enter your mobile number to receive a verification code.',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black38,
                    ),
                  ),
               ),
                SizedBox(
                  height:60,
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
                  child: CustomTextFromField(
                      obscureText: false,
                      hintText: "+880 1234567891",
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
                  height: 77,
                ),
                InkWell(
                  ///////////////"Sign In"//////
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      print(
                        "Submit Sucess full",
                      );
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyDemo()));
                    }
                  //  Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyDemo(),));
                  },
                  child: CustomButton(
                    Buttonnamr: "Send",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
