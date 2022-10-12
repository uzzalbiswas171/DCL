import 'package:dcl/AfterRegistrationHome/after_registration_home.dart';
import 'package:dcl/RegistorPageDemo/registor_page_demo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_radio_button/group_radio_button.dart';

class CustomerLanguageSelectPage extends StatefulWidget {
  const CustomerLanguageSelectPage({Key? key}) : super(key: key);

  @override
  State<CustomerLanguageSelectPage> createState() => _CustomerLanguageSelectPageState();
}

class _CustomerLanguageSelectPageState extends State<CustomerLanguageSelectPage> {
  bool Language_is_checed=true;
  bool person_is_checed=true;
  int _stackIndex = 0;
  String _singleValue = "Text alignment right";
  String _verticalGroupValue = "Pending";

  List<String> _status = ["Pending", "Released", "Blocked"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => AfterRegistrationHome(),));
      },
        backgroundColor: Colors.greenAccent,
      child: Icon(Icons.account_circle,size: 33,color: Colors.white,),
      ),
      backgroundColor: Color(0xffffffff),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(
            left: 20,
            right: 20
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 38,
                ),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  //  color: Colors.pink,
                    image: DecorationImage(image: AssetImage("img/d_logo.png"),fit: BoxFit.fill)
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 24,
                ),
                alignment: Alignment.center,
                height: 40,
                width: double.infinity,
                child: Text(
                  'Welcome to',
                  style: GoogleFonts.poppins(fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff00222F)
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 16,
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
                margin: EdgeInsets.only(
                  top: 51,
                  bottom: 16,
                ),
                alignment: Alignment.centerLeft,
                height: 40,
                width: double.infinity,
                child: Text(
                  'Select Language',
                  style: GoogleFonts.poppins(fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black38,
                  ),
                ),
              ),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xfff2f5f5),
                  borderRadius: BorderRadius.circular(11),
                ),

                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        setState((){
                          Language_is_checed=!Language_is_checed;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 16,
                          right: 16,
                        ),
                        height: 61,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text("English",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,fontSize: 14,
                              ),),
                            ),
                            Container(
                              child:Icon(Language_is_checed==true?Icons.radio_button_checked_outlined:Icons.radio_button_off),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 1,
                      color: Color(0xff898B8B),
                    ),
                    InkWell(
                      onTap: (){
                        setState((){
                          Language_is_checed=!Language_is_checed;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 16,
                          right: 16,
                        ),
                        height: 56,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text("বাংলা",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,fontSize: 14,
                              ),),
                            ),
                            Container(
                              child:Icon(Language_is_checed?Icons.radio_button_off:Icons.radio_button_checked_outlined),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 40,
                  bottom: 17,
                ),
                height: 26,
                width: double.infinity,
                //  color: Colors.pink,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Choose Your Account',
                  style: GoogleFonts.poppins(fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff00222F),
                  ),
                ),
              ),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                 // color: Colors.red,
                 color: Color(0xfff2f5f5),
                  borderRadius: BorderRadius.circular(11),
                ),

                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      height: 61,
                      width: double.infinity,
                      child: InkWell(
                        onTap: (){
                          setState((){
                            person_is_checed=!person_is_checed;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text("Customer"),
                            ),
                            Container(
                              child:Icon(Icons.arrow_forward_ios),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      height: 56,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text("Vendor"),
                          ),
                          Container(
                            child:Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              InkWell(
                onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:
                  (context) => RegistorPageDemo(),));
                },
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 50,
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffFD6501),
                      borderRadius: BorderRadius.circular(22)
                  ),
                  height: 40,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    'Confirm',
                    style: GoogleFonts.poppins(fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff00222F),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
