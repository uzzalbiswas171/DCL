import 'package:dcl/AfterRegistrationHome/CustomerDashBoard/customer_dashboard.dart';
import 'package:dcl/AfterRegistrationHome/CustomerSideMenu/customer_side_menue.dart';
import 'package:dcl/Custom/CustomButtomNavigationBar/custom_buttom_navigation_bar.dart';
import 'package:dcl/QRScannerValidation/qr_Scanner_validation.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AfterRegistrationHome extends StatefulWidget {
  const AfterRegistrationHome({Key? key}) : super(key: key);

  @override
  State<AfterRegistrationHome> createState() => _AfterRegistrationHomeState();
}

class _AfterRegistrationHomeState extends State<AfterRegistrationHome> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer:CustomerSideMenu() ,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              size: 33,
              color: Colors.black,
            )),
        actions: [
          Container(
            width: 45,
            alignment: Alignment.center,
            //   color: Colors.amberAccent,
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none_outlined,
                    size: 33,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 10,
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.red,
                    child: Text(
                      "2",
                      style: TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 45,
            padding: EdgeInsets.only(
              top: 5,
            ),
            // margin: EdgeInsets.only(
            //   left: 5,
            // ),
            // color: Colors.amberAccent,
            child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => QRViewExample(),));
              },
              icon: Icon(
                Icons.document_scanner_outlined,
                size: 25,
                color: Colors.black,
              ),
            ),
          ),
          InkWell(

            onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => CustomerSideMenu(),));
            },

            child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.amberAccent,
              backgroundImage: AssetImage(
                "img/user.png",
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: CustomerDashboard(),
    );

  }
}
