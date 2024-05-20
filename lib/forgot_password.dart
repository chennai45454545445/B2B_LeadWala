import 'package:b2b_leadwala/login_page.dart';
import 'package:b2b_leadwala/main.dart';
import 'package:b2b_leadwala/reset_password.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: forgotpass(),
  ));
}
void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => loginpage()));
}
void _navigateToNextScreen2(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => resetPassword()));
}
class forgotpass extends StatelessWidget {
  const forgotpass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.purpleAccent,
            child: GestureDetector(
              onTap: (){
                _navigateToNextScreen(context);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 20),
                    height: 30,
                     width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.purple,
                      ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            margin: EdgeInsets.only(top: 120),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "FORGOT PASSWORD?",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Three",
                                fontSize: 30),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "We are here to help you so please enter the email\naddress you provided at registration.",
                            style: TextStyle(fontFamily: "Three", color: Colors.grey,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.grey, fontFamily: "One", fontSize: 20),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Color.fromARGB(80, 52, 18, 18),
                        size: 30,
                      ),
                      hintText: "Email Address",
                      hintStyle: TextStyle(color: Colors.grey),
                      fillColor: Color.fromARGB(10, 52, 15, 15),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Color.fromARGB(10, 52, 17, 17),
                            width: 2,
                          )),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        borderSide: BorderSide(
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Color.fromARGB(10, 52, 17, 17),
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purpleAccent,
                      minimumSize: Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    onPressed: () {
                      _navigateToNextScreen2(context);

                    },
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
