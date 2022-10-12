import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WholesaleShop extends StatelessWidget {
  WholesaleShop({Key? key,required this.Amount,required this.discount}) : super(key: key);
  int ? Amount,discount;
  @override
  Widget build(BuildContext context) {
    DateTime _now = DateTime.now();
  return Card(
    elevation: 8,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(11)),
    child: Container(
      height: 111,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(11),
      ),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 8),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffC3CDD0),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("img/user.png")),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              )),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(
                top: 8,
                bottom: 8,
              ),
              alignment: Alignment.center,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Bismillah Store",style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),),
                  Text("Category : Grocery",style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),),
                  Text('Date : ${_now.day}/${_now.month}/${_now.year}',style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),),
                  Text("Amount : Tk. ${Amount}",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black,
                  ),),
                ],
              ),
            ),

          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.greenAccent[100],
              //  color: Color(0xff828FDA),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Discount",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                    ),),
                    Text("Tk. ${discount}",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                    ),),
                  ],
                ),
              )),
        ],
      ),
    ),
  );
  }
}
