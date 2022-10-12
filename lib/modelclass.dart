import 'package:flutter/material.dart';

class Details{
  String ?icon,parces,amount,amountvalue;
  Color ? color,color1;
  Details({this.color,this.color1,required this.icon,required this.amount,required this.amountvalue,required this.parces});
}

List<Details> mylist=[
  Details(
    icon: "img/spig.png",
    parces: "Total Purchase",
    amount: "Amount",
    amountvalue: "Ṭk 18,000",
    color: Color(0xff1935A6FF),
    color1: Color(0xff8E40ADFF),
  ),
  Details(
    icon:"img/dis.png",
    parces: "Total Discount",
    amount: "Amount",
    amountvalue: "Ṭk 5,000",
    color: Color(0xffA95B2BF5),
    color1: Color(0xff8C6856F5),
  ),
  Details(
    icon:"img/images.png",
    parces: "Total Dues",
    amount: "Amount",
    amountvalue: "Ṭk 5,00",
    color: Color(0xff9A1DA2FF),
    color1: Color(0xffCF8CDAFF),
  ),
  Details(
    icon:"img/repo.png",
    parces: "Total Reward Point",
    amount: "Collection",
    amountvalue: "250 points",
    color: Color(0xff8BA4A8FF),
    color1: Color(0xffCF8CDAFF),
  ),
];


