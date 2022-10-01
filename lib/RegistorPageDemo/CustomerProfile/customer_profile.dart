import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerProfile extends StatefulWidget {
  const CustomerProfile({Key? key}) : super(key: key);

  @override
  State<CustomerProfile> createState() => _CustomerProfileState();
}

class _CustomerProfileState extends State<CustomerProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 6,
        backgroundColor: Color(0xffFD6501),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 24,
              color: Colors.black,
            )),
        centerTitle: true,
        title: Text(
          'QR Code & PIN Number',
          style: GoogleFonts.rubik(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.black38,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 37,
              ),
              height: 130,
              width: 133,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(63),
                color: Colors.grey,
              ),
              child:  Container(

                height: 96,
                width: 99,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(63),
                    color: Colors.grey,
                    image: DecorationImage
                      (
                        image: AssetImage("img/d_logo.png"),
                        fit: BoxFit.fill)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
