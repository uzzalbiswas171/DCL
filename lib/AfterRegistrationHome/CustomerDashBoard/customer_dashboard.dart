import 'package:dcl/AfterRegistrationHome/CustomerDashBoard/customer_search.dart';
import 'package:dcl/Custom/CustomButtomNavigationBar/custom_buttom_navigation_bar.dart';
import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:dcl/carasolslider.dart';
import 'package:dcl/collect_reword.dart';
import 'package:dcl/store.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerDashboard extends StatefulWidget {
  const CustomerDashboard({Key? key}) : super(key: key);

  @override
  State<CustomerDashboard> createState() => _CustomerDashboardState();
}

class _CustomerDashboardState extends State<CustomerDashboard> {
  int amount1=1800;
  bool istimeselected = true;
  bool istimeselected1 = false;
  bool istimeselected2 = false;
  bool istimeselected3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: CustomButtomNavigationBar(home_color: Color(0xffFD6501), home_icon_color: Color(0xffFD6501), user_color: Colors.white, user_icon_color: Colors.grey, message_color: Colors.white, message_icon_color: Colors.grey, location_color: Colors.white, location_icon_color: Colors.grey),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 10,
        ),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(////////////////////////////////////////////////////////////////////
            //f1     profile
            height: 60,
            padding: EdgeInsets.only(
              left: 20,
              right: 20,),
            // color: Colors.greenAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Wellcome back",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black38,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Md. Abdul Hamid",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                )
              ],
            ),
          ),
              //profile/////////////////////////////////////////////////////////////////////////
            InkWell(
              onTap: () => showSearch(context: context, delegate: Search()),
              child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 8,horizontal: 20,
              ),
              decoration: BoxDecoration(
               color: Color(0xffECF1F3),
                borderRadius: BorderRadius.circular(22),
              ),
              height: 50,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {
                         showSearch(context: context, delegate: Search());
                      },
                        icon: Icon(
                          Icons.search,
                          size: 25,
                        )),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 50,
                      alignment: Alignment.centerLeft,
                      child: CustomText(text: "Search", color: Colors.grey, fontSize: 14, FontWeightt: FontWeight.w400),
                      // child: TextFormField(
                      //   decoration: InputDecoration(
                      //       border: InputBorder.none, hintText: "Search"),
                      // ),
                    ),
                  ),
                ],
              ),
          ),
            ),///////////////////////////////////////////////////////////////////
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,),
                //f3 time
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(
                  top: 12,
                ),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  //     color: Colors.red,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          istimeselected = true;
                          istimeselected1 = false;
                          istimeselected2 = false;
                          istimeselected3 = false;
                          amount1=1800;
                        });
                      },
                      child: Text(
                        "Daliy",
                        style: TextStyle(
                          fontSize: 16,
                          color: istimeselected == false
                              ? Colors.grey
                              : Colors.red,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          amount1=amount1*7;
                          istimeselected1 = true;
                          istimeselected = false;
                          istimeselected2 = false;
                          istimeselected3 = false;
                        });
                      },
                      child: Text(
                        "Weely",
                        style: TextStyle(
                          fontSize: 16,
                          color: istimeselected1 == false
                              ? Colors.grey
                              : Colors.red,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          amount1=amount1*30;
                          istimeselected1 = false;
                          istimeselected = false;
                          istimeselected2 = true;
                          istimeselected3 = false;
                        });
                      },
                      child: Text(
                        "Monthly",
                        style: TextStyle(
                          fontSize: 16,
                          color: istimeselected2 == false
                              ? Colors.grey
                              : Colors.red,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          amount1=amount1*365;
                          istimeselected1 = false;
                          istimeselected = false;
                          istimeselected2 = false;
                          istimeselected3 = true;
                        });
                      },
                      child: Text(
                        "yearly",
                        style: TextStyle(
                          fontSize: 16,
                          color: istimeselected3 == false
                              ? Colors.grey
                              : Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                               //  store page //time
              StorePage(
                amount: amount1,
                TotalDiscount: amount12,
                TotalDue: 500 * amount1,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,),
                //Category search//
                height: 60,
                width: double.infinity,
                //  color: Colors.cyan,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Choose Search Categories",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),     //Search Categories///////////////////////////////////////////////////////////////////
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,),
            height: 150,
            width: double.infinity,
            //  color: Colors.cyan,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black38,
                                  )),
                              //     color: Colors.deepPurpleAccent,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      color: Colors.white,
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        size: 35,
                                        color: Colors.deepPurple,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        left: 10,
                                      ),
                                      color: Colors.white,
                                      child: Text(
                                        "Search by Shope Location",
                                        style: GoogleFonts.poppins(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              margin: EdgeInsets.all(5),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black38,
                                  )),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 6
                                      ),
                                      color: Colors.white,
                                      child: Image.asset(
                                        "img/discc.PNG",
                                        height: 35,
                                        width: 35,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        left: 10,
                                      ),
                                      color: Colors.white,
                                      child: Text(
                                        "Search by Discount Shop",
                                         style: GoogleFonts.poppins(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              margin: EdgeInsets.all(5),
                            ),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      // color: Colors.pinkAccent,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black38,
                                  )),
                              //    color: Colors.deepPurpleAccent,
                              margin: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        left: 6
                                      ),
                                      color: Colors.white,
                                      child: Image.asset(
                                        "img/re.PNG",
                                        height: 35,
                                        width: 35,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        left: 10,
                                      ),
                                      color: Colors.white,
                                      child: Text(
                                        "Retailer Categories Shop",
                                          style: GoogleFonts.poppins(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black38,
                                  )),
                              //    color: Colors.deepPurpleAccent,
                              margin: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 6
                                      ),
                                      color: Colors.white,
                                      child: Image.asset(
                                        "img/re.PNG",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        left: 10,
                                      ),
                                      color: Colors.white,
                                      child: Text(
                                        "Wholesaler Categories Shop",
                                        style: GoogleFonts.poppins(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
              /////////////////////////////////////////////////////////////////////Search Categories///////////////////
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,),
                //Category search//
                height: 60,
                width: double.infinity,
                //  color: Colors.cyan,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Shope Suggestions",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              //shop suggestion
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,),
                //shop suggestion card  //
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  //  color: Colors.red,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: CarouselDemo(),
              ),

              //card//
              CollectRewardPointPage(),
            ],
          ),
        ),
      ),
    );
  }
  int amount12=60;
}
