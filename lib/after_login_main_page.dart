import 'package:b2b_leadwala/login_page.dart';
import 'package:b2b_leadwala/main.dart';
import 'package:b2b_leadwala/profile_page.dart';
import 'package:b2b_leadwala/setting_page.dart';
import 'package:b2b_leadwala/signup_page.dart';
import 'package:b2b_leadwala/start_leads_page.dart';
import 'package:b2b_leadwala/our_plan_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void _navigateToNextScreen1(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => ourplan()));
}

class AfterLogin extends StatefulWidget {
  const AfterLogin({super.key});

  @override
  State<AfterLogin> createState() => _State();
}

class _State extends State<AfterLogin> {
  int pages = 0;
  int pagess=0;
  int bottompage = 0;
  bool isCheck1 = false;
  bool isCheck2 = false;
  bool isCheck3 = false;
  bool isVisible= false;
  TextEditingController mySearch = TextEditingController();
  List<Map<String, String>> myList = [
    {
      "name": "S. A. Engineers",
    },
    {
      "name": "Game Cube",
    },
    {
      "name": "Microsoft",
    }
  ];
  List<Map<String, String>> filteredList = [];
  void filterResult (String searchText) async {
    if(filteredList.isNotEmpty) {
      filteredList = myList.where((item) =>
          item['name']!.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    }else {
      filteredList = myList;
    }

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filterResult(mySearch.text.toString());
  }
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            // backgroundColor: Color.fromARGB(20, 20, 20, 20),

            automaticallyImplyLeading: false,
            leading: Image.asset(
              'image/b2b.png',
              fit: BoxFit.cover,
            ),
            leadingWidth: 100,
            actions: [
              PopupMenuButton(
                child: Container(
                  height: 40,
                  width: 200,
                  child: TextField(
                    controller: mySearch,
                    onChanged: (value){
                      filterResult(value.toString());
                      setState(() {

                      });
                    },
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.grey,),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Color.fromARGB(20, 20, 20, 10),
                            style: BorderStyle.solid,
                          )
                      ),
                      focusedBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Colors.deepPurple.shade400,
                            width: 1,
                            style: BorderStyle.solid,
                          )
                      ),
                    ),
                  ),
                ),
                itemBuilder: (context) => [

              ] ,),
              PopupMenuButton(
                  icon: Icon(
                    Icons.filter_alt_outlined,
                    size: 30,
                    color: Colors.purple,
                  ),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Checkbox(
                                value: isCheck1,
                                onChanged: (value) {
                                  isCheck1 = value!;
                                },
                              ),
                              Text("Mobile No"),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Checkbox(
                                  value: isCheck2,
                                  onChanged: (value) {
                                    isCheck2 = value!;
                                  }),
                              Text("Email"),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Checkbox(
                                  value: isCheck3,
                                  onChanged: (value) {
                                    isCheck3 = value!;
                                  }),
                              Text("Phone"),
                            ],
                          ),
                        )
                      ]),
              // PopupMenuButton(
              //     icon: GestureDetector(
              //       onTap: (){
              //         setState(() {
              //           isVisible=!isVisible;
              //
              //         });
              //       },
              //       child: Icon(
              //         Icons.search,
              //         size: 30,
              //         color: Colors.purple,
              //       ),
              //     ),
              //     itemBuilder: (context) => [
              //         ]),
              PopupMenuButton(
                  icon: Icon(
                    Icons.more_vert_outlined,
                    size: 30,
                    color: Colors.purple,
                  ),
                  onSelected: (value) {
                    if (value == "1") {
                      // add desired output
                    } else if (value == "2") {
                      // add desired output
                    } else if (value == "3") {
                      // add desired output
                    }
                  },
                  itemBuilder: (context) => [
                        PopupMenuItem(value: "1", child: Text("Export Leads")),
                        PopupMenuItem(value: "2", child: Text("Subscription")),
                        PopupMenuItem(value: "3", child: Text("Clear Data")),
                        PopupMenuItem(value: "4", child: Text("Share App")),
                        PopupMenuItem(value: "5", child: Text("Rate Leadwala")),
                      ]),
              SizedBox(
                width: 10,
              )
            ],
          ),

          body: Stack(
            clipBehavior: Clip.hardEdge,
            fit: StackFit.expand,
            children: [
              bottompage == 0
                  ? SingleChildScrollView(
                      child: Column(
                        children: [
                          Visibility(
                            visible: isVisible,
                            child: Container(
                              height: 40,
                              width: 350,
                              child: TextField(
                                controller: mySearch,
                                onChanged: (value){
                                    filterResult(value.toString());
                                    setState(() {

                                    });
                                  },
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.grey),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search, color: Colors.grey,),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      strokeAlign: BorderSide.strokeAlignOutside,
                                      color: Color.fromARGB(20, 20, 20, 10),
                                      style: BorderStyle.solid,
                                    )
                                  ),
                                  focusedBorder:  OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        strokeAlign: BorderSide.strokeAlignOutside,
                                        color: Color.fromARGB(20, 20, 20, 10),
                                        style: BorderStyle.solid,
                                      )
                                  ),
                                ),
                              ),
                            )
                          ),
                          DefaultTabController(
                              length: 2,
                              child: TabBar(
                                unselectedLabelColor: Colors.grey,
                                indicatorColor: Colors.purple,
                                indicatorSize: TabBarIndicatorSize.tab,
                                indicatorWeight: 5,
                                dividerColor: Colors.white,
                                dividerHeight: 2,
                                onTap: (value) {
                                  setState(() {
                                    pages = value;
                                  });
                                },
                                tabs: [
                                  Tab(
                                    child: Text(
                                      "CONTACT VIEW",
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "LABEL CONTENT",
                                    ),
                                  ),
                                ],
                              )),
                          // pages == 0 ? Text("1st") : Text("2nd"),
                          pages == 0

                              ? Container(
                                  color: Color.fromARGB(255, 248, 235, 235),
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  child: ListView.builder(
                                      itemCount: filteredList.length,
                                      padding: EdgeInsets.only(bottom: 250),
                                      itemBuilder: (context, index) {
                                        return Column(
                                          children: [
                                            Container(
                                              height: 180,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 3,
                                                    spreadRadius: 5,
                                                    offset: Offset(0, 3),
                                                    color: Colors.grey
                                                        .withOpacity(0.3),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: Colors.white,
                                              ),
                                              margin: EdgeInsets.only(
                                                  left: 20,
                                                  right: 20,
                                                  top: 20),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 20, left: 20),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          width: 250,
                                                          child: Text(
                                                            filteredList[index]
                                                                    ["name"]
                                                                .toString(),
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        Spacer(),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 5),
                                                          width: 30,
                                                          height: 30,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color
                                                                .fromARGB(
                                                                    255,
                                                                    236,
                                                                    226,
                                                                    226),
                                                            shape: BoxShape
                                                                .circle,
                                                          ),
                                                          child:
                                                              PopupMenuButton(
                                                                  onSelected:
                                                                      (value) {
                                                                    if (value ==
                                                                        'delete') {
                                                                      showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return Center(
                                                                            child: SingleChildScrollView(
                                                                              child: Column(
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Container(
                                                                                    height: 450,
                                                                                    width: 350,
                                                                                    decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Image.asset('image/delete.png'),
                                                                                        Text(
                                                                                          "Want To Delete",
                                                                                          style: TextStyle(fontFamily: "Three", fontSize: 18),
                                                                                        ),
                                                                                        Container(
                                                                                          margin: EdgeInsets.only(top: 5),
                                                                                          child: Text(
                                                                                            "Are you sure you want to delete ?.\n"
                                                                                            "You will not be able to recover them.",
                                                                                            textAlign: TextAlign.center,
                                                                                            style: TextStyle(
                                                                                              color: Colors.grey,
                                                                                              fontFamily: "Three",
                                                                                              fontSize: 13,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          margin: EdgeInsets.only(top: 20),
                                                                                          child: ElevatedButton(
                                                                                            style: ElevatedButton.styleFrom(
                                                                                              backgroundColor: Colors.deepPurple.shade400,
                                                                                              minimumSize: Size(180, 50),
                                                                                            ),
                                                                                            onPressed: () {},
                                                                                            child: Text(
                                                                                              "Delete",
                                                                                              style: TextStyle(color: Colors.white),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          margin: EdgeInsets.only(top: 12),
                                                                                          child: GestureDetector(
                                                                                              onTap: () {
                                                                                                Navigator.of(context).pop();
                                                                                              },
                                                                                              child: Text(
                                                                                                "Cancel",
                                                                                                textAlign: TextAlign.center,
                                                                                                style: TextStyle(
                                                                                                  color: Colors.grey,
                                                                                                  fontFamily: "Three",
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                              )),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      );
                                                                    }
                                                                  },
                                                                  icon: Icon(Icons
                                                                      .more_horiz_rounded),
                                                                  itemBuilder:
                                                                      (context) =>
                                                                          [
                                                                            PopupMenuItem(value: 'delete', child: Text("Delete")),
                                                                            PopupMenuItem(child: Text("Remark")),
                                                                            PopupMenuItem(child: Text("Add Label")),
                                                                          ]),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          left: 20,
                                                          right: 20),
                                                      child: Text(
                                                        "Plot no. 6, Second Floor, Ganga tower Roop Nagar Colony Ajmer Road, Chitrakoot Marg, Tagore Nagar, Jaipur, Rajasthan 302021",
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: TextStyle(
                                                            fontFamily: "Two",
                                                            fontSize: 14,
                                                            color:
                                                                Colors.grey),
                                                      )),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 20, top: 8),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "gamecubeinfo@gmail.com",
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  "Two",
                                                              fontSize: 14,
                                                              color: Colors
                                                                  .grey),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 20,
                                                                  top: 10),
                                                          child: Text(
                                                            "+91-9894947785",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    "Two",
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .grey),
                                                          )),
                                                      Spacer(),
                                                      Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 35),
                                                          child: Container(
                                                            margin: EdgeInsets
                                                                .only(
                                                                    left: 30),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  height: 20,
                                                                  width: 20,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    color: Color.fromARGB(
                                                                        213,
                                                                        241,
                                                                        232,
                                                                        232),
                                                                  ),
                                                                  child:
                                                                      Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Image
                                                                          .asset(
                                                                        'image/wtsp.png',
                                                                        width:
                                                                            15,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  height: 20,
                                                                  width: 20,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    color: Color.fromARGB(
                                                                        213,
                                                                        241,
                                                                        232,
                                                                        232),
                                                                  ),
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              6),
                                                                  child: Image
                                                                      .asset(
                                                                    'image/email.png',
                                                                    width: 15,
                                                                  ),
                                                                ),
                                                                Container(
                                                                  height: 20,
                                                                  width: 20,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    color: Color.fromARGB(
                                                                        213,
                                                                        241,
                                                                        232,
                                                                        232),
                                                                  ),
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              5),
                                                                  child: Icon(
                                                                    Icons
                                                                        .phone,
                                                                    size: 15,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          )),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        );
                                      }),
                                )
                              : Container(
                                  color: Color.fromARGB(255, 248, 235, 235),
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  child: ListView.builder(
                                      itemCount: myList.length,
                                      padding: EdgeInsets.only(bottom: 210),
                                      itemBuilder: (context, index) {
                                        return Expanded(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 180,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 3,
                                                      spreadRadius: 5,
                                                      offset: Offset(0, 3),
                                                      color: Colors.grey
                                                          .withOpacity(0.3),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  color: Colors.white,
                                                ),
                                                margin: EdgeInsets.only(
                                                    left: 20,
                                                    right: 20,
                                                    top: 20),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: 20, left: 20),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.label,
                                                            size: 30,
                                                            color:
                                                                Colors.purple,
                                                          ),
                                                          Container(
                                                            width: 250,
                                                            child: Text(
                                                              myList[index]
                                                                      ["name"]
                                                                  .toString(),
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                          Spacer(),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 5),
                                                            width: 30,
                                                            height: 30,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      236,
                                                                      226,
                                                                      226),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child:
                                                                PopupMenuButton(
                                                                    onSelected:
                                                                        (value) {
                                                                      if (value ==
                                                                          'delete') {
                                                                        showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return Column(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Container(
                                                                                  height: 450,
                                                                                  width: 350,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                                                                    color: Colors.white,
                                                                                  ),
                                                                                  child: Column(
                                                                                    children: [
                                                                                      Image.asset('image/delete.png'),
                                                                                      Text(
                                                                                        "Want To Delete",
                                                                                        style: TextStyle(fontFamily: "Three", fontSize: 18),
                                                                                      ),
                                                                                      Container(
                                                                                        margin: EdgeInsets.only(top: 5),
                                                                                        child: Text(
                                                                                          "Are you sure you want to delete ?.\n"
                                                                                          "You will not be able to recover them.",
                                                                                          textAlign: TextAlign.center,
                                                                                          style: TextStyle(
                                                                                            color: Colors.grey,
                                                                                            fontFamily: "Three",
                                                                                            fontSize: 13,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        margin: EdgeInsets.only(top: 20),
                                                                                        child: ElevatedButton(
                                                                                          style: ElevatedButton.styleFrom(
                                                                                            backgroundColor: Colors.deepPurple.shade400,
                                                                                            minimumSize: Size(180, 50),
                                                                                          ),
                                                                                          onPressed: () {},
                                                                                          child: Text(
                                                                                            "Delete",
                                                                                            style: TextStyle(color: Colors.white),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        margin: EdgeInsets.only(top: 12),
                                                                                        child: Text(
                                                                                          "Cancel",
                                                                                          textAlign: TextAlign.center,
                                                                                          style: TextStyle(
                                                                                            color: Colors.grey,
                                                                                            fontFamily: "Three",
                                                                                            fontSize: 12,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        );
                                                                      }
                                                                    },
                                                                    icon: Icon(Icons
                                                                        .more_horiz_rounded),
                                                                    itemBuilder:
                                                                        (context) =>
                                                                            [
                                                                              PopupMenuItem(value: 'delete', child: Text("Delete")),
                                                                              PopupMenuItem(child: Text("Remark")),
                                                                              PopupMenuItem(child: Text("Add Label")),
                                                                            ]),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                        margin: EdgeInsets.only(
                                                            left: 20,
                                                            right: 20),
                                                        child: Text(
                                                          "Plot no. 6, Second Floor, Ganga tower Roop Nagar Colony Ajmer Road, Chitrakoot Marg, Tagore Nagar, Jaipur, Rajasthan 302021",
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: TextStyle(
                                                              fontFamily: "Two",
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.grey),
                                                        )),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 20, top: 8),
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            "gamecubeinfo@gmail.com",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    "Two",
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 20,
                                                                    top: 10),
                                                            child: Text(
                                                              "+91-9894947785",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "Two",
                                                                  fontSize: 14,
                                                                  color: Colors
                                                                      .grey),
                                                            )),
                                                        Spacer(),
                                                        Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 35),
                                                            child: Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 30),
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    height: 20,
                                                                    width: 20,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: Color.fromARGB(
                                                                          213,
                                                                          241,
                                                                          232,
                                                                          232),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Image
                                                                            .asset(
                                                                          'image/wtsp.png',
                                                                          width:
                                                                              15,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 20,
                                                                    width: 20,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: Color.fromARGB(
                                                                          213,
                                                                          241,
                                                                          232,
                                                                          232),
                                                                    ),
                                                                    margin: EdgeInsets
                                                                        .only(
                                                                            left:
                                                                                6),
                                                                    child: Image
                                                                        .asset(
                                                                      'image/email.png',
                                                                      width: 15,
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 20,
                                                                    width: 20,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: Color.fromARGB(
                                                                          213,
                                                                          241,
                                                                          232,
                                                                          232),
                                                                    ),
                                                                    margin: EdgeInsets
                                                                        .only(
                                                                            left:
                                                                                5),
                                                                    child: Icon(
                                                                      Icons
                                                                          .phone,
                                                                      size: 15,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            )),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                ),
                        ],
                      ),
                    )
                  : bottompage == 1
                      ? profilepage()
                      : bottompage == 2
                          ? startleads()
                          : bottompage == 3
                              ? ourplan()
                              : settingpage(),
              Bottom(),
            ],
          )),
    );
  }

  Widget Bottom() {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BottomNavigationBar(
            unselectedFontSize: 12,
            selectedFontSize: 14,
            selectedItemColor: Colors.purple,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              setState(() {
                bottompage = value;
// if(bottompage==1){
//  _navigateToNextScreen1(context);
// }
              });
            },
            currentIndex: bottompage,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.blue,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people), label: "Profile"),
              BottomNavigationBarItem(icon: Icon(null), label: "Start"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.attach_money), label: "Our Plan"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Setting"),
            ],
          ),
          Container(
              margin: EdgeInsets.only(bottom: 28),
              child: Icon(
                Icons.circle_notifications,
                size: 40,
                color: Colors.white,
              ),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.purpleAccent,
              )),
        ],
      ),
    );
  }
}
