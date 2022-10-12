import 'package:flutter/material.dart';
class CollectRewardPointPage extends StatefulWidget {
  const CollectRewardPointPage({Key? key}) : super(key: key);

  @override
  State<CollectRewardPointPage> createState() => _CollectRewardPointPageState();
}

class _CollectRewardPointPageState extends State<CollectRewardPointPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //Category search//
          height: 60,
          width: double.infinity,
          color: Colors.cyan[100],
          alignment: Alignment.centerLeft,
          child: Text(
            "Collect Rewared Points",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          height: 520,
          width: double.infinity,
          color: Colors.cyan[100],
          child: Column(
            children: [
              Card(
                elevation: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  margin: EdgeInsets.only(top: 20),
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        //////////////collect reward point//////////
                        flex: 2,
                        child: CircleAvatar(
                          radius: 22,
                          backgroundImage: AssetImage("img/user.png"),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          //  color: Colors.pink,
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bismillah store",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Grocery-Retailer",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38,
                                ),
                              ),
                              SizedBox(
                                child: Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                        Icons.location_on_outlined),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Grocery-Retailer",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight:
                                            FontWeight.w500,
                                            color: Colors.black38,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Dhaa 1229",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight:
                                              FontWeight.w500,
                                              color: Colors.black38,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: EdgeInsets.only(),
                          height: 100,
                          width: 70,
                          color: Colors.white,
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                child: Image.asset("img/rp.PNG"),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "Points : 40",
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  margin: EdgeInsets.only(top: 20),
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        //////////////collect reward point//////////
                        flex: 2,
                        child: CircleAvatar(
                          radius: 22,
                          backgroundImage: AssetImage("img/user.png"),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          //  color: Colors.pink,
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bismillah store",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Grocery-Retailer",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38,
                                ),
                              ),
                              SizedBox(
                                child: Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                        Icons.location_on_outlined),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Grocery-Retailer",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight:
                                            FontWeight.w500,
                                            color: Colors.black38,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Dhaa 1229",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight:
                                              FontWeight.w500,
                                              color: Colors.black38,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: EdgeInsets.only(),
                          height: 100,
                          width: 70,
                          color: Colors.white,
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                child: Image.asset("img/rp.PNG"),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "Points : 40",
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  margin: EdgeInsets.only(top: 20),
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        //////////////collect reward point//////////
                        flex: 2,
                        child: CircleAvatar(
                          radius: 22,
                          backgroundImage: AssetImage("img/user.png"),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          //  color: Colors.pink,
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bismillah store",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Grocery-Retailer",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38,
                                ),
                              ),
                              SizedBox(
                                child: Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                        Icons.location_on_outlined),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Grocery-Retailer",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight:
                                            FontWeight.w500,
                                            color: Colors.black38,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Dhaa 1229",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight:
                                              FontWeight.w500,
                                              color: Colors.black38,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: EdgeInsets.only(),
                          height: 100,
                          width: 70,
                          color: Colors.white,
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                child: Image.asset("img/rp.PNG"),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "Points : 40",
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  margin: EdgeInsets.only(top: 20),
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        //////////////collect reward point//////////
                        flex: 2,
                        child: CircleAvatar(
                          radius: 22,
                          backgroundImage: AssetImage("img/user.png"),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          //  color: Colors.pink,
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bismillah store",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Grocery-Retailer",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38,
                                ),
                              ),
                              SizedBox(
                                child: Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                        Icons.location_on_outlined),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Grocery-Retailer",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight:
                                            FontWeight.w500,
                                            color: Colors.black38,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Dhaa 1229",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight:
                                              FontWeight.w500,
                                              color: Colors.black38,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: EdgeInsets.only(),
                          height: 100,
                          width: 70,
                          color: Colors.white,
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                child: Image.asset("img/rp.PNG"),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "Points : 40",
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
        Container(
          margin: EdgeInsets.only(bottom: 10),
          color: Colors.red[100],
          height: 60,
          width: double.infinity,
          alignment: Alignment.center,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.black,
                size: 23,
              )
            ],
          ),
        )
      ],
    );
  }
}
