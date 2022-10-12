import 'package:dcl/Custom/CustomButton/custom_button.dart';
import 'package:dcl/Custom/CustomTextFromField/custom_text_from_field.dart';
import 'package:dcl/RegistorPageDemo/CustomerProfile/customer_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreatNewPawsword extends StatefulWidget {
  const CreatNewPawsword({Key? key}) : super(key: key);

  @override
  State<CreatNewPawsword> createState() => _CreatNewPawswordState();
}

class _CreatNewPawswordState extends State<CreatNewPawsword> {
  bool obscureext = false;
  TextEditingController _newpasswordController=TextEditingController();
  TextEditingController _conpasswordController=TextEditingController();
  final _formkey = GlobalKey<FormState>();
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
          'New Password',
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
                    bottom: 24,
                  ),
                  height: 195,
                  width: 209,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("img/new_password.png"),
                          fit: BoxFit.fill)),
                ),
                Container(
                  height: 24,
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'New Password',
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
                    maxLines: 1,
                    obscureText: !obscureext,
                    hintText: "*********",
                    controller: _newpasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Invalid";
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
                  height: 93,
                ),
                Container(
                  height: 24,
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Confirm Password',
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
                    maxLines: 1,
                    obscureText: !obscureext,
                    hintText: "*********",
                    controller: _conpasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Invalid";
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
                  height: 92,
                ),
                InkWell(
                  ///////////////"Sign In"//////
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      print(
                        "Submit Sucess full",
                      );
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CustomerProfile(),));
                    }
                  },
                  child: CustomButton(
                    Buttonnamr: "Save",
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
