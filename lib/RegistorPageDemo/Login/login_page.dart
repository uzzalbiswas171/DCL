
import 'package:dcl/Custom/CustomButton/custom_button.dart';
import 'package:dcl/Custom/CustomTextFromField/custom_text_from_field.dart';
import 'package:dcl/RegistorPageDemo/ForgetPassword/forget_password.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sign_In_Page extends StatefulWidget {
  const Sign_In_Page({Key? key}) : super(key: key);

  @override
  State<Sign_In_Page> createState() => _Sign_In_PageState();
}

class _Sign_In_PageState extends State<Sign_In_Page> {
  String? phone, pass;
  bool obscureext = false;
  bool obscurtext = true;
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        color: Colors.white,
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
                  height: 46,
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
                        if (!value.contains("123")) {
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
                    'Password',
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
                Container(                     ////////////////error////////////
                  height: 80,
                  alignment: Alignment.centerLeft,

                  child: CustomTextFromField(
                    maxLines: 1,
                    obscureText: obscurtext,
                    hintText: "*********",
                    controller: _passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return phone = "Wrong Password";
                      }
                    },
                    color: Colors.black38,
                    fontSize: 14,
                    suffixIcon: Container(
                      margin: EdgeInsets.only(right: 10),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              obscurtext = !obscurtext;
                            });
                          },
                          icon: Icon(obscureext == false
                              ? Icons.visibility_off
                              : Icons.visibility)),
                    ),
                  ),
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
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              child: Container(
                                color: Colors.white12,
                                height: 200,
                                width: 200,
                                alignment: Alignment.center,
                                child:
                                    Text("AFTER SOMETIME IT WILL BE CUSTOMIZE"),
                              ),
                            );
                          });
                    }
                  },
                  child: CustomButton(
                    Buttonnamr: "Sign In",
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  ///////////////"ForgetPassword"//////
                  onTap: () { Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgetPassword()));
               },
                  child: Container(
                    height: 17,
                    width: 124,
                    child: Center(
                      child: Text(
                        'Forgot Password?',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  height: 42,
                  width: 173,
                  child: Center(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Don’t have an account?',
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Register",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.red,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
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
