import 'package:dcl/RegistorPageDemo/CreatNewPawsword/create_new_password.dart';
import 'package:dcl/RegistorPageDemo/CustomerProfile/customer_profile.dart';
import 'package:dcl/RegistorPageDemo/Login/login_page.dart';
import 'package:dcl/RegistorPageDemo/Registration/registration.dart';
import 'package:dcl/RegistorPageDemo/VerifyDemo/verify_demo.dart';
import 'package:dcl/Screen/Home/customer_language_select.dart';
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
     home: const CustomerProfile(),
    );
  }
}
