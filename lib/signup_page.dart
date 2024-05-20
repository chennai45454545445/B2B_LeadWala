import 'package:b2b_leadwala/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SignUp(),
  ));
}
void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => loginpage()));
}
class SignUp extends StatefulWidget {
  const SignUp ({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController password = TextEditingController();
  TextEditingController password1 = TextEditingController();
  bool _obscureText1 = true;
  bool _obscureText2 = true;
  void _togglePasswordVisibility1() {
    setState(() {
      _obscureText1 = !_obscureText1;

    });
  }
  void _togglePasswordVisibility2() {
    setState(() {
      _obscureText2 = !_obscureText2;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.purpleAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 30,
                      width: 30,
                      margin: EdgeInsets.only(top: 15, left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white, ),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.purple,
                      )),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
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
                              "GET STARTED",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Three",
                                  fontSize: 30),
                            ),
                            Text("Create account to continue",style: TextStyle(fontFamily: "Two"),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: TextField(
                      style: TextStyle(
                          color: Colors.grey, fontFamily: "One", fontSize: 20),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.people,
                          color: Color.fromARGB(80, 52, 18, 18),
                          size: 30,
                        ),
                        hintText: "Full Name",
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
                    margin: EdgeInsets.only(left: 20, right: 20, top: 8),
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
                    margin: EdgeInsets.only(left: 20, right: 20, top: 8),
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
                    margin: EdgeInsets.only(left: 20, right: 20, top: 8),
                    child: TextField(
                      style: TextStyle(
                          color: Colors.grey, fontFamily: "One", fontSize: 20),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.work,
                          color: Color.fromARGB(80, 52, 18, 18),
                          size: 30,
                        ),
                        hintText: "Company Name",
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
                    margin: EdgeInsets.only(left: 20, right: 20, top: 8),
                    child: TextField(
                      controller: password,
                      obscureText: _obscureText1,
                      style: TextStyle(
                          color: Colors.grey, fontFamily: "One", fontSize: 20),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: _obscureText1 ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                          onPressed: () {
                            _togglePasswordVisibility1();
                          },
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
                    margin: EdgeInsets.only(left: 20, right: 20, top: 8),
                    child: TextField(
                      controller: password1,
                      obscureText: _obscureText2,
                      style: TextStyle(
                          color: Colors.grey, fontFamily: "One", fontSize: 20),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: _obscureText2 ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                          onPressed: () {
                            _togglePasswordVisibility2();
                          },
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
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
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
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
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
                            "Log In",
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
