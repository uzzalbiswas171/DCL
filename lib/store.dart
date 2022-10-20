
import 'package:dcl/StorePage/DuesHistory/dues_history.dart';
import 'package:dcl/StorePage/RetailerShop/DiscountHistoryPage/discount_history_page.dart';
import 'package:dcl/StorePage/ShopRewordpoint/shoprewordpoint.dart';
import 'package:dcl/StorePage/purchase_histore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class StorePage extends StatelessWidget {
    StorePage({Key? key,
      required this.amount,
       this.TotalDiscount,
       this.TotalDue,
    }) : super(key: key);
   int amount;
   int? TotalDiscount;
   int? TotalDue;
   int? TotalRewoardPoint;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,),
      //f4 grid view
      height: 300,
      width: double.infinity,
      //   color: Colors.red,
      // padding: EdgeInsets.all(10),
      child:Column(
        children: [
         Expanded(
             flex: 1,
             child: Row(
               children: [
                 Expanded(
                     flex: 1,
                     child: InkWell(
                       onTap:(){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => PurchasHistoryPage(),));
                       },
                       child: Container(
                   margin: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                       image: DecorationImage(image: AssetImage("img/total_purchese.png"),fit: BoxFit.fill),
                       borderRadius: BorderRadius.circular(15),
                   ),
                   padding: EdgeInsets.all(10),
                   child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [

                         Expanded(
                           flex: 2,
                           child: Container(
                             alignment: Alignment.center,
                             height: 41,
                             width:  47,
                             padding: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(50)
                             ),
                             child: Container(
                               decoration: BoxDecoration(
                                   image: DecorationImage(
                                     image: AssetImage(
                                       "icon/totalpurchas.png"
                                     ),
                                     fit: BoxFit.fill,
                                   )),
                             ),
                             //  child:Image.asset("${mylist[index].icon}",fit: BoxFit.fill,)
                           ),
                         ),
                         Expanded(
                           flex: 1,
                           child: Container(
                             height: 40,
                             alignment: Alignment.centerLeft,
                             child: Text("Total Purchase",
                               style: GoogleFonts.poppins(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                           ),
                         ),
                         Expanded(
                           flex: 1,
                           child: Container(
                             height: 40,
                             alignment: Alignment.centerLeft,
                             child: Text("Amount",
                               style: GoogleFonts.poppins(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                           ),
                         ),
                         Expanded(
                           flex: 1,
                           child: Container(
                             height: 40,
                             alignment: Alignment.centerLeft,
                             child: Text("Tk ${amount}",
                               style: GoogleFonts.poppins(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                           ),
                         ),
                       ],
                   ),
                 ),
                     )),
                 Expanded(
                     flex: 1,
                     child: InkWell(
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => DiscountHistoryPage(),));
                       },
                       child: Container(
                         margin: EdgeInsets.all(10),
                         decoration: BoxDecoration(
                           image: DecorationImage(image: AssetImage("img/total_discount.png"),fit: BoxFit.fill),
                           borderRadius: BorderRadius.circular(15),
                         ),
                         padding: EdgeInsets.all(10),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [

                             Expanded(
                               flex: 2,
                               child: Container(
                                 alignment: Alignment.center,
                                 height: 41,
                                 width:  47,
                                 decoration: BoxDecoration(
                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(50)
                                 ),
                                 child: Container(
                                   height: 30,
                                   width:  30,
                                   decoration: BoxDecoration(
                                     //  borderRadius: BorderRadius.circular(100),
                                       image: DecorationImage(
                                         image: AssetImage(
                                           "icon/totaldiscount.png",
                                         ),
                                         fit: BoxFit.fill,
                                       )),
                                 ),
                                 //  child:Image.asset("${mylist[index].icon}",fit: BoxFit.fill,)
                               ),
                             ),
                             Expanded(
                               flex: 1,
                               child: Container(
                                 height: 40,
                                 alignment: Alignment.centerLeft,
                                 child: Text("Total Discount",
                                   style: GoogleFonts.poppins(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                               ),
                             ),
                             Expanded(
                               flex: 1,
                               child: Container(
                                 height: 40,
                                 alignment: Alignment.centerLeft,
                                 child: Text("Amount",
                                   style: GoogleFonts.poppins(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                               ),
                             ),
                             Expanded(
                               flex: 1,
                               child: Container(
                                 height: 40,
                                 alignment: Alignment.centerLeft,
                                 child: Text("Tk ${amount}",
                                   style: GoogleFonts.poppins(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                               ),
                             ),
                           ],
                         ),
                       ),
                     )),

               ],
             ),
         ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DuesHistory(),));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("img/totaldues.png"),fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Expanded(
                              flex: 2,
                              child: Container(
                                alignment: Alignment.center,
                                height: 41,
                                width:  47,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: Container(
                                  height: 30,
                                  width:  30,
                                  decoration: BoxDecoration(
                                    //  borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "icon/totaldues.png",
                                        ),
                                        fit: BoxFit.fill,
                                      )),
                                ),
                                //  child:Image.asset("${mylist[index].icon}",fit: BoxFit.fill,)
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 40,
                                alignment: Alignment.centerLeft,
                                child: Text("Total Dues",
                                  style: GoogleFonts.poppins(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 40,
                                alignment: Alignment.centerLeft,
                                child: Text("Amount",
                                  style: GoogleFonts.poppins(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 40,
                                alignment: Alignment.centerLeft,
                                child: Text("Ṭk ${TotalDue}",
                                  style: GoogleFonts.poppins(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => Shop_Reword_point(),));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("img/reward_points.png"),fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Expanded(
                              flex: 2,
                              child: Container(
                                alignment: Alignment.center,
                                height: 41,
                                width:  47,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: Container(
                                  height: 30,
                                  width:  30,
                                  decoration: BoxDecoration(
                                     // borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "icon/rewardpoint.png",
                                        ),
                                        fit: BoxFit.fill,
                                      )),
                                ),
                                //  child:Image.asset("${mylist[index].icon}",fit: BoxFit.fill,)
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 40,
                                alignment: Alignment.centerLeft,
                                child: Text("Total Reward Point",
                                    style: GoogleFonts.poppins(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 40,
                                alignment: Alignment.centerLeft,
                                child: Text("Amount",
                                  style: GoogleFonts.poppins(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 40,
                                alignment: Alignment.centerLeft,
                                child: Text("Ṭk ${TotalRewoardPoint}",
                                  style: GoogleFonts.poppins(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),

              ],
            ),
          ),
        ],
      )
    );
  }
}

