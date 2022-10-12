
import 'package:dcl/AfterRegistrationHome/after_registration_home.dart';
import 'package:dcl/RegistorPageDemo/CustomerProfile/customer_profile.dart';
import 'package:flutter/material.dart';

class CustomButtomNavigationBar extends StatelessWidget {
   CustomButtomNavigationBar({Key? key,
     required this.home_color,
     required this.home_icon_color,
     required this.user_color,
     required this.user_icon_color,
     required this.message_color,
     required this.message_icon_color,
     required  this.location_color,
     required  this.location_icon_color,
     // this.home_button,
     // this.location_button,
     // this.message_button,
     // this.user_button,
  }) : super(key: key);
  final Color? home_color,home_icon_color,user_color,user_icon_color,message_color,message_icon_color,location_color,location_icon_color;
 //  final VoidCallback ? home_button,location_button,message_button,user_button;
  @override
  Widget build(BuildContext context) {
    return Container(

      alignment: Alignment.center,
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
      ),
      height: 70,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              children: [
                InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AfterRegistrationHome(),));
                  },
                  child: Icon(
                    Icons.home_outlined,
                    size: 33,
                    color: home_icon_color,
                  ),
                ),
                Container(height: 2,width:33,color:home_color)
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                InkWell(
                  onTap: (){

                  },
                  child: Icon(
                    Icons.location_on_outlined,
                    size: 33,
                    color:  location_icon_color,
                  ),
                ),
                Container(height: 2,width:33,color: location_color,)
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                InkWell(
                  onTap: (){

                  },
                  child: Icon(
                    Icons.email_outlined,
                    size: 33,
                    color:  message_icon_color,
                  ),
                ),
                Container(height: 2,width:33,color: message_color,)
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CustomerProfile(),));
                  },
                  child: Icon(
                    Icons.account_circle_outlined,
                    size: 33,
                    color:  user_icon_color,
                  ),
                ),
                Container(height: 2,width:33,color: user_color,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
