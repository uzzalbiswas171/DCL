import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:flutter/material.dart';

class SelectCategory extends StatelessWidget {
   SelectCategory({Key? key,required this.Select_Categories}) : super(key: key);
    String ? Select_Categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        border: Border.all(width: 1, color: Colors.black38),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
              text: "${Select_Categories}",
              color: Colors.black45,
              fontSize: 13,
              FontWeightt: FontWeight.w400),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_drop_down_circle_outlined,
              size: 22,
              color: Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
