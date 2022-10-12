import 'package:dcl/AfterRegistrationHome/CustomerDashBoard/customer_dashboard.dart';
import 'package:dcl/AfterRegistrationHome/after_registration_home.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  PageController controller=PageController();
  List<Widget> _list=<Widget>[
    new AfterRegistrationHome(),
    new AfterRegistrationHome(),
    new AfterRegistrationHome(),
    new AfterRegistrationHome(),

  ];
  int _curr=0;
  int _selectedIndex=0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.grey,
        body: PageView.builder(
          itemCount: _list.length,
          itemBuilder: (context, index) {
          return  Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(.1),
                  )
                ],
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                  child: GNav(
                    rippleColor: Colors.grey[300]!,
                    hoverColor: Colors.grey[100]!,
                    gap: 8,
                    activeColor: Colors.black,
                    iconSize: 24,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    duration: Duration(milliseconds: 400),
                    tabBackgroundColor: Colors.grey[100]!,
                    color: Colors.black,
                    tabs: [
                      GButton(
                        icon:  Icons.home,
                        text: 'Home',
                      ),
                      GButton(
                        icon: Icons.location_on,
                        text: 'Location',
                      ),
                      GButton(
                        icon: Icons.email_outlined,
                        text: 'Message',
                      ),
                      GButton(
                        icon: Icons.account_circle,
                        text: 'Profile',
                      ),
                    ],
                    selectedIndex: _selectedIndex,
                    onTabChange: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                  ),
                ),
              ),
            );
        },)
    );
  }
}
