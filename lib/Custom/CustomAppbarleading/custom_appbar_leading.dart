import 'package:flutter/material.dart';

class CustomAppbarleading extends StatelessWidget {
  const CustomAppbarleading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 45,
      alignment: Alignment.center,
      //   color: Colors.amberAccent,
      child: Stack(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_outlined,
              size: 33,
              color: Colors.black,
            ),
          ),
          Positioned(
            right: 0,
            top: 10,
            child: CircleAvatar(
              radius: 7,
              backgroundColor: Colors.red,
              child: Text(
                "2",
                style: TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
