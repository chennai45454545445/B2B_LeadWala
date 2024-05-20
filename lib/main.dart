
import 'package:b2b_leadwala/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData.light(),
    home: MyApp(),
  ));
}

void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // From FIGMA IMAGE
         // Container(
         //   height: 3000,
         //   width: MediaQuery.of(context).size.width,
         //   decoration: BoxDecoration(
         //     image: DecorationImage(
         //       image: AssetImage('image/splash.png'),
         //     )
         //   ),
         //   child: Center(
         //     child: Column(
         //       mainAxisAlignment: MainAxisAlignment.center,
         //       children: [
         //         GestureDetector(
         //           onTap: (){
         //             _navigateToNextScreen(context);
         //           },
         //           child: Container(
         //             margin: EdgeInsets.only(top: 550),
         //             width: 75,
         //             height: 75,
         //             decoration: BoxDecoration(
         //               color: Colors.deepPurple.shade400,
         //               shape: BoxShape.circle,
         //             ),
         //             child: Container(
         //                 margin: EdgeInsets.only(left: 15),
         //                 child: Icon(
         //                   Icons.arrow_back_ios,
         //                   color: Colors.white,
         //                   size: 45,
         //                 )),
         //           ),
         //         ),
         //       ],
         //     ),
         //   ),
         // )
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "B",
                          style: TextStyle(fontSize: 90, fontFamily: "four"),
                        ),
                        Text(
                          "2",
                          style: TextStyle(
                              fontSize: 70,
                              fontFamily: "four",
                              color: Color.fromARGB(
                                  255, 165, 14, 14)),
                        ),
                        Text(
                          "B",
                          style: TextStyle(fontSize: 90, fontFamily: "four"),
                        ),
                      ],
                    ),
                    SizedBox(height: 0),
                    Column(
                      children: [
                        Text(
                          "Lead Wala",
                          style: TextStyle(fontSize: 40, fontFamily: "four", color: Color.fromARGB(
                              255, 165, 14, 14)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 80,
                width: 80,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 200, left: 90),
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade400,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 550, left: 25),
            width: 35,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade400,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 410, left: 330),
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade400,
              shape: BoxShape.circle,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    _navigateToNextScreen(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 550),
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade400,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 45,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
