import 'package:dcl/StorePage/DuesHistory/Bill/pay_bill.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DuesCategory extends StatelessWidget {
  const DuesCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(
        bottom: 16,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(11),
      ),
      elevation: 8,
      child: Container(
        padding: EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(11),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.2,
                margin: EdgeInsets.only(
                  left: 7,
                  right: 7,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  image: DecorationImage(
                      image: AssetImage("img/po.png"), fit: BoxFit.fill),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Ma Baba Store",
                          style: GoogleFonts.poppins(
                            color: Color(0xff00222F),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (_) => AlertDialog(

                                content: Container(
                                  height: 100,
                                  width: 300,
                                  child: Column(
                                    children: [
                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Row(
                                          children: [
                                            Icon(Icons.visibility_outlined,color: Colors.grey,size: 22,),
                                            SizedBox(width: 10,),
                                            Text(
                                              "View Invoice",
                                              style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 15,),
                                      InkWell(
                                        onTap: () {

                                        },
                                        child:Row(
                                          children: [
                                            Icon(Icons.save_alt,color: Colors.grey,size: 22,),
                                            SizedBox(width: 10,),
                                            Text(
                                              "Download Invoice",
                                              style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 15,),
                                      InkWell(
                                        onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => Bill_Pay_page(),));
                                        },
                                        child: Row(
                                          children: [
                                            Icon(Icons.send,color: Colors.grey,size: 22,),
                                            SizedBox(width: 10,),
                                            Text(
                                              "Pay Bill",
                                              style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Image(
                            image: AssetImage("img/itembar.png"),
                            fit: BoxFit.fill,
                            height: 20,
                            width: 20,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 22,
                          color: Colors.black38,
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Text(
                          "Progoti Shoroni, Dhaka 1229",
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          size: 22,
                          color: Colors.black38,
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Text(
                          "09:45 AM , 03/08/2022",
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Paid : Tk. 5000 via Cash",
                      style: GoogleFonts.poppins(
                        color: Color(0xff35D232),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Dues : Tk. 0",
                      style: GoogleFonts.poppins(
                        color: Color(0xffFF0000),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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
