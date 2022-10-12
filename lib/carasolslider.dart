import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselDemo extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) => Column(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            height: 160,
            aspectRatio: 16/9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items: ["img/cc.PNG"].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      image:DecorationImage(image: AssetImage("${i}"),fit: BoxFit.fill)
                    ),
                  child: Column(
                    children: [
                      Expanded(
                          flex:4,
                          child: Container(
                    //    color: Colors.blue,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex:1,
                                      child: Container(
                                        child: CircleAvatar(
                                          radius: 22,
                                        backgroundColor: Colors.white,
                                          backgroundImage: AssetImage("img/po.png"),
                                ),
                                      )),
                                Expanded(
                                    flex:3,
                                    child:Container(
                                      margin: EdgeInsets.only(
                                        top: 15
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Bismilla Store",style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                          ),),
                                          Text("Mojnu Miya"),
                                          Text("Grocrry - wholesaler"),
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    flex:1,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: 5,
                                        left: 5,
                                      ),
                                  //    color: Colors.pink,
                                      child: Column(
                                        children: [
                                          Text("15%",style: TextStyle(
                                            color: Colors.white,
                                              fontSize: 13,
                                            fontWeight: FontWeight.w500
                                          ),),
                                          Text("OFF",style: TextStyle(
                                              color: Colors.white,
                                            fontSize: 10
                                          )),

                                        ],
                                      ),
                                    )),
                              ],
                            ),

                      )),
                      Expanded(
                          flex:3,
                          child: Container(
                            //   color: Colors.pink,
                            child: Column(
                              children: [
                                Text("1A 005,1st Floor Jamuna Future Par",
                                  style: GoogleFonts.poppins(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),)
                                ,Text("AA-244, Curil",
                                  style: GoogleFonts.poppins(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),)
                                ,Text("Progoti Shoroni,Dhaa 1229",
                                  style: GoogleFonts.poppins(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),)
                              ],
                            ),
                          )),

                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),

      ]
  );
}