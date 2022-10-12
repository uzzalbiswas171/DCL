import 'package:flutter/material.dart';

class SearchDateDemo extends StatelessWidget {
   SearchDateDemo({Key? key,this.color,required this.presentdateTimeController,required this.futuredateTimeController}) : super(key: key);
  final TextEditingController? presentdateTimeController,futuredateTimeController;
   final Color? color;
  @override
  Widget build(BuildContext context) {
    DateTime _now = DateTime.now();
    return Container(
      height: 41,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffE1EAED),
                  borderRadius: BorderRadius.circular(11)),
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.center,
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: TextFormField(
                      controller: presentdateTimeController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:
                          '${_now.day}/${_now.month}/${_now.year}'),
                    ),
                  ),
                  Expanded(child: Text("-")),
                  Expanded(
                      flex: 6,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.center,
                        child: TextFormField(
                          controller: futuredateTimeController,
                          decoration: InputDecoration(
                              hintText: "dd/mm/yy",
                              border: InputBorder.none),
                        ),
                      ))
                ],
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.calendar_today_outlined),
                  Icon(Icons.view_sidebar_sharp,color:color,)
                ],
              ))
        ],
      ),
    );
  }
}
