import 'package:dcl/Custom/CustomButtomNavigationBar/custom_buttom_navigation_bar.dart';
import 'package:dcl/StorePage/RetailerShop/HoleSheller/hole_sheller.dart';
import 'package:dcl/StorePage/RetailerShop/Retailer/retailer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PurchasHistoryPage extends StatefulWidget {
  const PurchasHistoryPage({Key? key}) : super(key: key);

  @override
  State<PurchasHistoryPage> createState() => _PurchasHistoryPageState();
}

class _PurchasHistoryPageState extends State<PurchasHistoryPage> {
  DateTime _now = DateTime.now();
  bool iscliced = true;
  int Amountt=500;
  int discount=100;
  TextEditingController _futuredateTimeController = TextEditingController();
  TextEditingController _presentdateTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: CustomButtomNavigationBar(home_color: Colors.white, home_icon_color: Colors.grey, user_color: Colors.white, user_icon_color: Colors.grey, message_color: Colors.white, message_icon_color: Colors.grey, location_color: Colors.white, location_icon_color: Colors.grey),
      ),
      appBar: AppBar(
        elevation: 7,
        centerTitle: true,
        backgroundColor: Colors.white,
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
          "Purchase  History",
          style: GoogleFonts.rubik(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.only(top: 32),
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 41,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffE1EAED),
                          borderRadius: BorderRadius.circular(11)),
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: TextFormField(
                              controller: _presentdateTimeController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText:
                                      '${_now.day}/${_now.month}/${_now.year}'),
                            ),
                          ),
                          Expanded(child: Text("-")),
                          Expanded(
                              flex: 6,
                              child: Container(
                                padding: EdgeInsets.only(bottom: 5),
                                alignment: Alignment.center,
                                child: TextFormField(
                                  controller: _futuredateTimeController,
                                  decoration: InputDecoration(
                                      hintText: "dd/mm/yy",
                                      border: InputBorder.none),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.calendar_today_outlined),
                          Icon(Icons.view_sidebar_sharp)
                        ],
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 25,
              ),
              height: 40,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            iscliced = !iscliced;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: iscliced == true
                                ? Color(0xff5B72ED)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(11),
                            border: Border.all(
                              width: 1,
                              color: iscliced == true
                                  ? Color(0xff5B72ED)
                                  : Colors.black38,
                            ),
                          ),
                          child: Text(
                            "Retailer Shop",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color:
                                  iscliced == true ? Colors.white : Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      )),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          iscliced = !iscliced;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 8),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: iscliced == true
                                ? Colors.white
                                : Color(0xff5B72ED),
                            borderRadius: BorderRadius.circular(11),
                            border: Border.all(
                              width: 1,
                              color: iscliced == true
                                  ? Colors.black38
                                  : Color(0xff5B72ED),
                            )),
                        child: Text(
                          "Wholesale Shop",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color:
                                iscliced == true ? Colors.grey : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return iscliced == true ? Retailer(
                      Amount: Amountt,
                      discount: discount,
                    ):WholesaleShop(
                      Amount: Amountt,
                      discount: discount,
                    );
                  },
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 32,),
              height: 25,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  Container(child: Text("Total Purchase Amount",style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.grey),)),
                  Container(child: Text("${Amountt*20}",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 13,bottom: 32),
              height: 25,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  Container(child: Text("Total Discount",style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.grey),)),
                  Container(child: Text("${discount*20}",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
