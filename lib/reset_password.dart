import 'package:b2b_leadwala/forgot_password.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: resetPassword(),
  ));
}

void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => forgotpass()));
}

class resetPassword extends StatelessWidget {
  const resetPassword({super.key});

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
              onTap: () {
                _navigateToNextScreen(context);
              },
              child: Container(
                margin: EdgeInsets.only(left: 15, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Icon(Icons.arrow_back_ios),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 150),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                       margin: EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Text(
                            "RESET YOUR PASSWORD?",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Three",
                                fontSize: 30),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "Change Password For Your Lead Wala Appp",
                            style: TextStyle(
                              fontFamily: "Three",
                              color: Colors.grey,
                            ),
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
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                      hintText: "Confirm Password",
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
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
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
