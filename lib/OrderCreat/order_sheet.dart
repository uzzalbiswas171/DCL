import 'package:dcl/Custom/CustomText/custom_text.dart';
import 'package:dcl/OrderCreat/ProductOrder/product_order.dart';
import 'package:dcl/OrderCreat/product_price.dart';
import 'package:dcl/OrderCreat/selectcatecory.dart';
import 'package:flutter/material.dart';

class OrderSheet extends StatefulWidget {
  const OrderSheet({Key? key}) : super(key: key);

  @override
  State<OrderSheet> createState() => _OrderSheetState();
}

class _OrderSheetState extends State<OrderSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd6ccc3),
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Colors.white,
        title: CustomText(
            text: "Order List",
            color: Color(0xff00222F),
            fontSize: 16,
            FontWeightt: FontWeight.w400),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: Column(
                      children: [
                        Product_Order_Head_line(),
                        Divider(
                            height: 10, color: Colors.black45, thickness: 1),
                        Product_Price(Product_name: " 1. Potato"),
                        Product_Price(Product_name: " 2. Onion"),
                        Product_Price(Product_name: " 3. Green Chilli "),
                        Product_Price(Product_name: " 4. Soyabean Oil"),
                        Product_Price(Product_name: " 5. Salt"),
                        Product_Price(Product_name: " 6. Sugar"),
                        Product_Price(Product_name: " 7. Mustard Oil"),
                        Product_Price(Product_name: " 8. Onion"),
                        Product_Price(Product_name: " 9. Onion"),
                        Product_Price(Product_name: " 10. Onion"),
                        Product_Price(Product_name: " 11. Onion"),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )),
              ),
              SliverToBoxAdapter(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    top: 40,
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: SelectCategory(Select_Categories: "Select Categories")
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: SelectCategory(Select_Categories: "Select Shop")
                      ),
                    ],
                  ),
                ),
              ),

              SliverToBoxAdapter(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.redAccent,
                  margin: EdgeInsets.only(
                    top: 24,
                  ),
                ),
              ),

            ],
          )),
    );
  }
}
