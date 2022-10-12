import 'package:flutter/material.dart';

class DhaaChoiceLogo extends StatelessWidget {
  const DhaaChoiceLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 111,
      width: 111,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(
            image: AssetImage("img/dha_choice.png"), fit: BoxFit.fill),
      ),
    );
  }
}
