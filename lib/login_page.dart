import 'package:b2b_leadwala/after_login_main_page.dart';
import 'package:b2b_leadwala/forgot_password.dart';
import 'package:b2b_leadwala/main.dart';
import 'package:b2b_leadwala/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: loginpage(),
  ));
}
void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));

}
void _navigateToNextScreen2(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => forgotpass()));

}
void _navigateToNextScreen3(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => AfterLogin()));

}



class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
             children: [
               Container(
                 height: 200,
                 width: MediaQuery.of(context).size.width,
                 // color: Colors.purpleAccent, This also can be use but BoxDecoration is Good Option
                 decoration: BoxDecoration(
                   color: Colors.purpleAccent,
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     GestureDetector(
                       onTap: (){
                        _navigateToNextScreen(context);
                       },
                       child: Container(
                         margin: EdgeInsets.only(top: 20, left: 15),
                         height: 30,
                         width: 30,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                         ),
                         child: Column(
                           children: [
                             Icon(Icons.arrow_back_ios),
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
          Container(
            margin: EdgeInsets.only(top: 120),
             decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.only(
           topLeft: Radius.circular(50),
           topRight: Radius.circular(50),
         )
             ),
            padding: EdgeInsets.only(bottom: 40),
            child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "WELCOME BACK",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Three",
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text("Login account to continue",style: TextStyle(fontFamily: "Two"),),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextField(
              style: TextStyle(
                  color: Colors.grey, fontFamily: "One", fontSize: 20),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.phone,
                  color: Color.fromARGB(80, 52, 18, 18),
                  size: 30,
                ),
                hintText: "Mobile Number",
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
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextField(
              style: TextStyle(
                  color: Colors.grey, fontFamily: "One", fontSize: 20),
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Color.fromARGB(80, 52, 18, 18),
                  size: 25,
                ),
                prefixIcon: Icon(
                  Icons.security,
                  color: Color.fromARGB(80, 52, 18, 18),
                  size: 30,
                ),
                hintText: "Password",
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
            margin: EdgeInsets.only(right: 20, top: 7),
            child: GestureDetector(
              onTap: (){
                _navigateToNextScreen2(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Your Password?",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontFamily: "Two",
                        ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
                minimumSize: Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              onPressed: () {
                _navigateToNextScreen3(context);
              },
              child: Text(
                "Log In",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontFamily: "Two",
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: (){
                    _navigateToNextScreen(context);
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Two",
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ],
            ),
          ),
        ],
        ),
      ),

    );
  }
}
