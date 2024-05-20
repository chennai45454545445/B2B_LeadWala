import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ourplan extends StatefulWidget {
  const ourplan({super.key});

  @override
  State<ourplan> createState() => _ourplanState();
}

class _ourplanState extends State<ourplan> {
  int page=0;
  List<Map<String, String>> myList = [
    {
      "a": "FREE PLAN",
      "b": "₹0",
      "c": "150 Leads",
      "d": "2 Exports",
      "e": "Limited Features",
      "f": "24/7 Support",
      "price1" : "₹0",
      "gst" : "₹0",
      "total" : "₹0",
    },
    {
      "a": "MONTHLY PLAN",
      "b": "₹499/- Month",
      "c": "2000 Leads Per Month",
      "d": "10 Exports Per Month",
      "e": "All Features Access",
      "f": "24/7 Support",
      "price1" : "₹499",
      "gst" : "₹89.82",
      "total" : "₹588.82",
    },
    {
      "a": "YEARLY PLAN",
      "b": "₹4999/- Month",
      "c": "Unlimited Leads",
      "d": "Unlimited Export",
      "e": "All Features Access",
      "f": "24/7 Support",
      "price1" : "₹4999",
      "gst" : "899.82",
      "total" : "₹5,898.82",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  padding: EdgeInsets.only(bottom: 160),
                  itemCount: myList.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                              height: 430,
                              width: 350,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                                color: Color.fromARGB(10, 10, 20, 10),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      color: Colors.deepPurple.shade400,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          myList[index]["a"].toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 19,
                                              fontFamily: "Three"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromARGB(15, 15, 10, 10),
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          myList[index]["b"].toString(),
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Color.fromARGB(15, 15, 10, 10),
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          myList[index]["c"].toString(),
                                          style: TextStyle(
                                              fontSize: 17, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Color.fromARGB(15, 15, 10, 10),
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          myList[index]["d"].toString(),
                                          style: TextStyle(
                                              fontSize: 17, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Color.fromARGB(15, 15, 10, 10),
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          myList[index]["e"].toString(),
                                          style: TextStyle(
                                              fontSize: 17, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Color.fromARGB(15, 15, 10, 10),
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          myList[index]["f"].toString(),
                                          style: TextStyle(
                                              fontSize: 17, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            showBottom(index, myList);
                                          },
                                          child: Text(
                                            "Download",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            maximumSize:
                                                Size(double.infinity, 50),
                                            backgroundColor:
                                                Colors.deepPurple.shade400,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  void showBottom (int index, List getList) async {
    showBottomSheet(
      context: context,
      builder: (context, ) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          // height: 700,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context)
              .size
              .width,
          child: Column(
            children: [
              Container(
                height: 60,
                width:
                MediaQuery.of(context)
                    .size
                    .width,
                decoration: BoxDecoration(
                  color: Colors.deepPurple
                      .shade400,
                  borderRadius:
                  BorderRadius.only(
                    topLeft:
                    Radius.circular(
                        30),
                    topRight:
                    Radius.circular(
                        30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment
                      .center,
                  children: [
                    Text(
                      "${getList[index]['a']}",
                      style: TextStyle(
                        fontFamily:
                        "Three",
                        color:
                        Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Color.fromARGB(
                        15, 12, 10, 10),
                    border: Border.all(
                      strokeAlign: BorderSide
                          .strokeAlignOutside,
                      color:
                      Color.fromARGB(
                          10,
                          10,
                          10,
                          10),
                    )),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment
                      .center,
                  children: [
                    Text(
                        "${myList[index]['a']}",
                        style: TextStyle(
                          fontFamily:
                          "Three",
                          color: Colors
                              .black,
                        )),
                  ],
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      strokeAlign: BorderSide
                          .strokeAlignOutside,
                      color:
                      Color.fromARGB(
                          10,
                          10,
                          10,
                          10),
                    )),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment
                      .center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment
                            .center,
                        children: [
                          Text(
                              "App Payment"),
                          Spacer(),
                          // SizedBox(
                          //   width: 240,
                          // ),
                          Text(
                            "${getList[index]['price1']}"
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      strokeAlign: BorderSide
                          .strokeAlignOutside,
                      color:
                      Color.fromARGB(
                          10,
                          10,
                          10,
                          10),
                    )),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment
                      .center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment
                            .center,
                        children: [
                          Text("GST (18%)"),
                          Spacer(),
                          Text( "${getList[index]['gst']}"),
                          SizedBox(
                            width: 1,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      strokeAlign: BorderSide
                          .strokeAlignOutside,
                      color: Colors
                          .deepPurple
                          .shade400,
                    )),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment
                      .center,
                  children: [
                    Container(
                      height: 35,
                      width:
                      MediaQuery.of(
                          context)
                          .size
                          .width,
                      decoration:
                      BoxDecoration(
                        color: Colors
                            .deepPurple
                            .shade400,
                      ),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment
                            .center,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                                color: Colors
                                    .white,
                                fontWeight:
                                FontWeight
                                    .bold),
                          ),
                          SizedBox(
                            width: 275,
                          ),
                          Text(
                            "${myList[index]['total']}",
                            style: TextStyle(
                                color: Colors
                                    .white,
                                fontWeight:
                                FontWeight
                                    .bold),
                          ),
                          SizedBox(
                            width: 1,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Color.fromARGB(
                        15, 12, 10, 10),
                    border: Border.all(
                      strokeAlign: BorderSide
                          .strokeAlignOutside,
                      color:
                      Color.fromARGB(
                          10,
                          10,
                          10,
                          10),
                    )),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment
                      .center,
                  children: [
                    Text(
                        "Billing address",
                        style: TextStyle(
                          fontFamily:
                          "Three",
                          color: Colors
                              .black,
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 8, left: 24),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment
                      .start,
                  children: [
                    Text(
                      "Name:",
                      style: TextStyle(
                          color:
                          Colors.grey,
                          fontSize: 14),
                    ),
                    SizedBox(
                      width: 148,
                    ),
                    Text(
                      "Company:",
                      style: TextStyle(
                          color:
                          Colors.grey,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment
                    .center,
                children: [
                  Container(
                    height: 40,
                    width: 160,
                    child: TextField(
                      decoration:
                      InputDecoration(
                        enabledBorder:
                        OutlineInputBorder(
                          borderSide:
                          BorderSide(
                            strokeAlign:
                            BorderSide
                                .strokeAlignOutside,
                            color: Color
                                .fromARGB(
                                25,
                                25,
                                15,
                                10),
                          ),
                          borderRadius:
                          BorderRadius
                              .circular(
                              10),
                        ),
                        focusedBorder:
                        OutlineInputBorder(
                          borderSide:
                          BorderSide(
                            strokeAlign:
                            BorderSide
                                .strokeAlignOutside,
                            color: Color
                                .fromARGB(
                                25,
                                25,
                                15,
                                10),
                          ),
                          borderRadius:
                          BorderRadius
                              .circular(
                              10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 40,
                    width: 160,
                    child: TextField(
                      decoration:
                      InputDecoration(
                        enabledBorder:
                        OutlineInputBorder(
                          borderSide:
                          BorderSide(
                            strokeAlign:
                            BorderSide
                                .strokeAlignOutside,
                            color: Color
                                .fromARGB(
                                25,
                                25,
                                15,
                                10),
                          ),
                          borderRadius:
                          BorderRadius
                              .circular(
                              10),
                        ),
                        focusedBorder:
                        OutlineInputBorder(
                          borderSide:
                          BorderSide(
                            strokeAlign:
                            BorderSide
                                .strokeAlignOutside,
                            color: Color
                                .fromARGB(
                                25,
                                25,
                                15,
                                10),
                          ),
                          borderRadius:
                          BorderRadius
                              .circular(
                              10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 8, left: 24),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment
                      .start,
                  children: [
                    Text(
                      "Name:",
                      style: TextStyle(
                          color:
                          Colors.grey,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment
                    .start,
                children: [
                  Container(
                    margin:
                    EdgeInsets.only(
                        left: 22),
                    height: 40,
                    width: 350,
                    child: TextField(
                      decoration:
                      InputDecoration(
                        enabledBorder:
                        OutlineInputBorder(
                          borderSide:
                          BorderSide(
                            strokeAlign:
                            BorderSide
                                .strokeAlignOutside,
                            color: Color
                                .fromARGB(
                                25,
                                25,
                                15,
                                10),
                          ),
                          borderRadius:
                          BorderRadius
                              .circular(
                              10),
                        ),
                        focusedBorder:
                        OutlineInputBorder(
                          borderSide:
                          BorderSide(
                            strokeAlign:
                            BorderSide
                                .strokeAlignOutside,
                            color: Color
                                .fromARGB(
                                25,
                                25,
                                15,
                                10),
                          ),
                          borderRadius:
                          BorderRadius
                              .circular(
                              10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Proceed",
                        style: TextStyle(
                            color: Colors
                                .white),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 50),
                        backgroundColor: Colors.deepPurple.shade400,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

}
