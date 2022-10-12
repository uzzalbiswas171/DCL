import 'package:dcl/Custom/CustomButtomNavigationBar/custom_buttom_navigation_bar.dart';
import 'package:dcl/StorePage/RetailerShop/DiscountHistoryPage/searchdatedemo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscountHistoryPage extends StatefulWidget {
 DiscountHistoryPage({Key? key,
 }) : super(key: key);
 
  @override
  State<DiscountHistoryPage> createState() => _DiscountHistoryPageState();
}

class _DiscountHistoryPageState extends State<DiscountHistoryPage> {
  bool iscliced = true;
  int Amountt = 500;
  int discount = 100;
  TextEditingController _futuredateTimeController = TextEditingController();
  TextEditingController _presentdateTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: CustomButtomNavigationBar(home_color: Colors.white, home_icon_color: Colors.grey, user_color: Colors.white, user_icon_color: Colors.grey, message_color: Colors.white, message_icon_color: Colors.grey, location_color: Colors.white, location_icon_color: Colors.grey),
      ),
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 25,
              color: Color(0xff00222F),
            )),
        title: Text(
          "Discount History",
          style: GoogleFonts.poppins(
            color: Color(0xff00222F),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 32,
            ),
            SearchDateDemo(
                color: Colors.black45,
                presentdateTimeController: _presentdateTimeController,
                futuredateTimeController: _futuredateTimeController),
            SizedBox(
              height: 32,
            ),
            Container(
              child: Text(
                "Retailer Shop Purchase Discount",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 48),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFFF4B9),
                            borderRadius: BorderRadius.circular(11)
                        ),
                        width: double.infinity,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Total Purchase Amount",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black45,
                              ),
                            ),
                            Text(
                              "Tk. 10,000 ",
                              style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffD5F7FF),
                                        borderRadius: BorderRadius.circular(11)
                                    ),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Discount From",
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Text(
                                      "Dhaka choice",
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Text(
                                      "Tk. 10,000 ",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                              SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffEFE3FF),
                                      borderRadius: BorderRadius.circular(11)
                                  ),

                                  child:Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Discount From",style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                      ),),
                                      Text("Retailer",style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                      ),),
                                      Text("Tk. 10,000 ",style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54,
                                      ),)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Container(
              child: Text(
                "Wholesaler Shop Purchase Discount",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 48),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFFF4B9),
                            borderRadius: BorderRadius.circular(11)
                        ),
                        width: double.infinity,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Total Purchase Amount",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black45,
                              ),
                            ),
                            Text(
                              "Tk. 10,000 ",
                              style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffD5F7FF),
                                        borderRadius: BorderRadius.circular(11)
                                    ),

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Discount From",
                                          style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        Text(
                                          "Dhaka choice",
                                          style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        Text(
                                          "Tk. 10,000 ",
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black54,
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffEFE3FF),
                                      borderRadius: BorderRadius.circular(11)
                                  ),
                                  child:Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Discount From",style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                      ),),
                                      Text("Retailer",style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                      ),),
                                      Text("Tk. 10,000 ",style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54,
                                      ),)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
