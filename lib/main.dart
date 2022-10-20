

import 'package:dcl/OrderCreat/order_sheet.dart';
import 'package:dcl/Paymentmethod/payment_method.dart';
import 'package:dcl/Screen/Home/customer_language_select.dart';
import 'package:dcl/StorePage/ShopRewordpoint/Reward_Point_Withdraw/reward_point_withdraw.dart';
import 'package:dcl/StorePage/ShopRewordpoint/shoprewordpoint.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CustomerLanguageSelectPage(),
      //  home: const CustomerDashboard(),
      //home: const AfterRegistrationHome(),
      // home:  MyHomePage(),
      // home:  PurchasHistoryPage(),
      // home:  DiscountHistoryPage(),
     //  home:  AfterRegistrationHome(),
      //home:  DuesHistory(),
      // home:  DiscountHistoryPage(),
      //  home:  Bill_Pay_page(),
      // home:  PaymentDone(),
      //   home:  Shop_Reword_point(),
      // home:  Reward_Point_Withdraw(),
       // home:  OrderSheet(),

    );
  }
}

