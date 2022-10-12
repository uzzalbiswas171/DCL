import 'package:dcl/Custom/CustomButtomNavigationBar/custom_buttom_navigation_bar.dart';
import 'package:dcl/StorePage/DuesHistory/dues_gategory.dart';
import 'package:dcl/StorePage/DuesHistory/dues_search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DuesHistory extends StatefulWidget {
  const DuesHistory({Key? key}) : super(key: key);

  @override
  State<DuesHistory> createState() => _DuesHistoryState();
}

class _DuesHistoryState extends State<DuesHistory> {
  bool istimeselected = true;
  bool istimeselected1 = false;
  bool istimeselected2 = false;
  bool istimeselected3 = false;
  int amount1 = 1800;
  TextEditingController _presentdateTimeController = TextEditingController();
  TextEditingController _futuredateTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      appBar: AppBar(
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
          "Dues History",
          style: GoogleFonts.rubik(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Color(0xff00222F),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            Dues_Search_Time(
                presentdateTimeController: _presentdateTimeController,
                futuredateTimeController: _futuredateTimeController),
            Container(
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
                        amount1 = 1800;
                      });
                    },
                    child: Text(
                      "Daliy",
                      style: TextStyle(
                        fontSize: 16,
                        color:
                            istimeselected == false ? Colors.grey : Colors.red,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        amount1 = amount1 * 7;
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
                        color:
                            istimeselected1 == false ? Colors.grey : Colors.red,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        amount1 = amount1 * 30;
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
                        color:
                            istimeselected2 == false ? Colors.grey : Colors.red,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        amount1 = amount1 * 365;
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
                        color:
                            istimeselected3 == false ? Colors.grey : Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
             //   color: Colors.greenAccent,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                  return DuesCategory();
                },),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
