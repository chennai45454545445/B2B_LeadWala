import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: submitfeedback(),
  ));
}

class submitfeedback extends StatelessWidget {
  const submitfeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_outlined, color: Colors.white,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              // top: Radius.circular(50), // yahaan radius ki value set kijiye
              ),
        ),
        backgroundColor: Colors.purple.shade800,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 0),
              child: Column(
                children: [
                  Image.asset(
                    'image/feedback.jpg',
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "GIVE FEEDBACK",
                        style: TextStyle(
                            fontFamily: "Three",
                            fontWeight: FontWeight.w700,
                            fontSize: 25),
                      ),
                      Text(
                        "What do you think of the LeadWala?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Two",
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.emoji_emotions_outlined,
                    size: 30,
                    color: Color.fromARGB(255, 200, 233, 255),
                  ),
                  SizedBox(
                    width: 39,
                  ),
                  Icon(
                    Icons.emoji_emotions_rounded,
                    size: 30,
                    color: Color.fromARGB(255, 167, 223, 248),
                  ),
                  SizedBox(
                    width: 39,
                  ),
                  Icon(
                    Icons.emoji_emotions,
                    size: 30,
                    color: Color.fromARGB(255, 130, 196, 232),
                  ),
                  SizedBox(
                    width: 39,
                  ),
                  Icon(
                    Icons.emoji_emotions_rounded,
                    size: 30,
                    color: Color.fromARGB(255, 85, 199, 246),
                  ),
                  SizedBox(
                    width: 39,
                  ),
                  Icon(
                    Icons.emoji_emotions_rounded,
                    size: 30,
                    color: Color.fromARGB(255, 49, 173, 229),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Row(
                children: [
                  Text(
                    "Do you have any additional feedback for us?\n"
                    "We’re listening.",
                    style: TextStyle(fontFamily: "Three", fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextField(
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.start,
                    maxLines: 5,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 249, 215, 255),
                      filled: true,
                      hintText: "Tell us what is on your mind...",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.purple,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Colors.purple.shade800,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                      onPressed: (){}, child: Text("Submit", style: TextStyle(color: Colors.white),)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
