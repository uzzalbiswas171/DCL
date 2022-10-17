
import 'package:dcl/AfterRegistrationHome/CustomerDashBoard/customer_dashboard.dart';
import 'package:dcl/AfterRegistrationHome/after_registration_home.dart';
import 'package:dcl/PageView/pageview/pageviewhome.dart';
import 'package:dcl/Screen/Home/customer_language_select.dart';
import 'package:dcl/StorePage/DuesHistory/Bill/PaymentDone/paymentdone.dart';
import 'package:dcl/StorePage/DuesHistory/Bill/pay_bill.dart';
import 'package:dcl/StorePage/DuesHistory/dues_history.dart';
import 'package:dcl/StorePage/RetailerShop/DiscountHistoryPage/discount_history_page.dart';
import 'package:dcl/StorePage/ShopRewordpoint/shoprewordpoint.dart';
import 'package:dcl/StorePage/purchase_histore.dart';
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
     // home: const CustomerLanguageSelectPage(),
     //  home: const CustomerDashboard(),
       //    home: const AfterRegistrationHome(),
      // home:  MyHomePage(),
     // home:  PurchasHistoryPage(),
     // home:  DiscountHistoryPage(),
  // home:  AfterRegistrationHome(),
    //   home:  DuesHistory(),
    //  home:  Bill_Pay_page(),
    // home:  PaymentDone(),
     home:  Shop_Reword_point(),

    );
  }
}

