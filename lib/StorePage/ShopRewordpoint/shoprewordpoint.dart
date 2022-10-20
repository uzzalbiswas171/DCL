import 'package:dcl/AfterRegistrationHome/CustomerSideMenu/customer_side_menue.dart';
import 'package:dcl/Custom/CustomAppbarleading/custom_appbar_leading.dart';
import 'package:dcl/Custom/CustomButtomNavigationBar/custom_buttom_navigation_bar.dart';
import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:dcl/StorePage/ShopRewordpoint/Reward_Point_Withdraw/reward_point_withdraw.dart';
import 'package:dcl/StorePage/ShopRewordpoint/collect_rewardpoint.dart';
import 'package:dcl/StorePage/ShopRewordpoint/dhaa_choice_reward_point.dart';
import 'package:flutter/material.dart';

class Shop_Reword_point extends StatefulWidget {
  const Shop_Reword_point({Key? key}) : super(key: key);

  @override
  State<Shop_Reword_point> createState() => _Shop_Reword_pointState();
}

class _Shop_Reword_pointState extends State<Shop_Reword_point> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomerSideMenu(),
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
          CustomAppbarleading(),
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
              onPressed: () {},
              icon: Icon(
                Icons.document_scanner_outlined,
                size: 25,
                color: Colors.black,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CustomerSideMenu(),
                  ));
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
      bottomNavigationBar: BottomAppBar(
        child: CustomButtomNavigationBar(
            home_color: Colors.white,
            home_icon_color: Colors.grey,
            user_color: Colors.white,
            user_icon_color: Colors.grey,
            message_color: Colors.white,
            message_icon_color: Colors.grey,
            location_color: Colors.white,
            location_icon_color: Colors.grey),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: CustomText(
                  text: "Wellcome back",
                  color: Colors.black38,
                  fontSize: 18,
                  FontWeightt: FontWeight.w600),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: CustomText(
                  text: "Dhaka Choice Rewards",
                  color: Colors.black,
                  fontSize: 18,
                  FontWeightt: FontWeight.w600),
            ),
            SizedBox(
              height: 24,
            ),
            DhaaChoiceRewardPoint(Totap_points: 12, value: 0.3),
            Container(
              margin: EdgeInsets.only(
                top: 16,
                bottom: 30,
                left: 20,
                right: 20,
              ),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      text: "400 PTS equals to Tk. 4",
                      color: Color(0xff00222F),
                      fontSize: 14,
                      FontWeightt: FontWeight.w300),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Reward_Point_Withdraw(),
                          ));
                    },
                    child: CustomText(
                        text: "Withdraw",
                        color: Color(0xff7D7C7C),
                        fontSize: 12,
                        FontWeightt: FontWeight.w400),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffC7CED0)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xffE7F8FF),
              height: 64,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                top: 24,
                left: 20,
              ),
              child: CustomText(
                text: "Collect Rewared Points",
                color: Colors.black,
                fontSize: 16,
                FontWeightt: FontWeight.w600,
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Color(0xffE7F8FF),
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                ////////////////////////////////////////////////////////////////////
                //f1     profile
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return CollectRedardPoint(
                        Adderss: "Progoti Shoroni, Dhaka 1229",
                        backgroundImage: AssetImage("img/user.png"),
                        RE_points: 80);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
