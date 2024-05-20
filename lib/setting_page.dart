import 'package:b2b_leadwala/contact_us.dart';
import 'package:b2b_leadwala/submit_feedback_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MaterialApp(home: settingpage(),));
}
void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => submitfeedback()));
}
void _navigateToNextScreen1(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => contactus()));
}
class settingpage  extends StatelessWidget {
  const settingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 110),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 246, 240, 240),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            child: Icon(Icons.recycling, size: 70,),
                          ),
                          Text("Reset App"),
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 246, 240, 240),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            child: GestureDetector(onTap:(){_navigateToNextScreen(context);}, child: Icon(Icons.newspaper, size: 70,)),
                          ),
                          Text("Submit Feedback"),

                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 246, 240, 240),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            child: GestureDetector(onTap:(){_navigateToNextScreen1(context);}, child: Icon(Icons.phone, size: 70,)),
                          ),
                          Text("Contact Us"),

                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 246, 240, 240),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            child: Icon(Icons.power_settings_new_outlined, size: 70,),
                          ),
                          Text("Sign Out"),

                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
