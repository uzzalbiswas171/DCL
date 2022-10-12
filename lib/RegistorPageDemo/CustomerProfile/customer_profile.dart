
import 'package:dcl/Custom/CustomButtomNavigationBar/custom_buttom_navigation_bar.dart';
import 'package:dcl/QRScannerValidation/qr_Scanner_validation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomerProfile extends StatefulWidget {
  const CustomerProfile({Key? key}) : super(key: key);

  @override
  State<CustomerProfile> createState() => _CustomerProfileState();
}

class _CustomerProfileState extends State<CustomerProfile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedIndex = 3;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: CustomButtomNavigationBar(home_color: Colors.white, home_icon_color: Colors.grey, user_color: Color(0xffFD6501), user_icon_color: Color(0xffFD6501), message_color: Colors.white, message_icon_color: Colors.grey, location_color: Colors.white, location_icon_color: Colors.grey),
      ),
      appBar:AppBar(
        elevation: 6,
        backgroundColor: Color(0xffFD6501),
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
          'QR Code & PIN Number',
          style: GoogleFonts.rubik(
            fontSize: 18,
            fontWeight: FontWeight.w400,
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
                  top: 37,
                  bottom: 24,
                ),
                height: 130,
                width: 133,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(63),
                  color: Colors.grey,
                ),
                alignment: Alignment.center,
                child:  Container(

                  height: 96,
                  width: 99,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(63),
                      color: Colors.grey,
                      image: DecorationImage
                        (
                          image: AssetImage("img/user.png"),
                          fit: BoxFit.fill)
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 16,
                ),
                height: 20,
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  'Dhaka Choice Discount App',
                  style: GoogleFonts.poppins(fontSize: 18,
                      color: Color(0xffFD6501),
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 24,
                ),
                height: 20,
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  'Your ID: 478562',
                  style: GoogleFonts.poppins(fontSize: 14,
                      color: Color(0xff00222F),
                      fontWeight: FontWeight.w400),
                ),
              ),
              InkWell(
                onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const QRViewExample(),
                    ));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 222,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 35),
                    width: 214,
                    height: 220,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("img/scanner.png"))
                    ),
                  ),
                ),
              ),
              Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(
                    width: 1,
                    color: Color(0xffFD6501),
                  ),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.camera_alt_outlined,size: 19,color: Color(0xffFD6501),),
                    SizedBox(
                      width: 11,
                    ),
                    Text(
                      'Scan QR Code',
                      style: GoogleFonts.poppins(
                          color: Color(0xffFD6501),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
