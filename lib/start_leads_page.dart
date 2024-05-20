import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: startleads(),
  ));
}

class startleads extends StatelessWidget {
  const startleads({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 65,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "GENERATE LEADS",
                    style: TextStyle(
                        fontFamily: "Three",
                        fontWeight: FontWeight.w700,
                        fontSize: 25),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50,),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 22),
                  child: TextField(
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.shopping_bag),
                      hintText: "Keyword (ex: flexible packaging )",
                      fillColor: Color.fromARGB(10, 20, 20, 20),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          )
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
                  child: TextField(
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_city),
                      hintText: "Area/Location",
                      fillColor: Color.fromARGB(10, 20, 20, 20),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          )
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
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
                      onPressed: (){}, child: Text("Start", style: TextStyle(color: Colors.white),)),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: RichText(textAlign: TextAlign.center,
                      text: TextSpan(
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'If you see that there are no more leads are extracting ',
                            style: TextStyle(color:Colors.grey, fontSize: 13,),
                          ),
                          TextSpan(
                            text: 'there, may be ',
                            style: TextStyle(color:Colors.grey, fontSize: 13,),
                          ),
                          TextSpan(
                            text: 'Captcha Error ',
                            style: TextStyle(color:Colors.blue, fontSize: 13,),
                          ),
                          TextSpan(
                            text: 'a is occurring.',
                            style: TextStyle(color:Colors.grey, fontSize: 13,),
                          ),
                        ]
                    ),),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'If that is the case, click here to open google test search page, solve ',
                            style: TextStyle(color:Colors.grey, fontSize: 13,),
                          ),
                          TextSpan(
                            text: 'Google Captcha ',
                            style: TextStyle(color:Colors.blue, fontSize: 13,),
                          ),
                          TextSpan(
                            text: '(recaptcha) and try extracting leads again. Your problem will be fixed for sure. ',
                            style: TextStyle(color:Colors.grey, fontSize: 13,),
                          ),
                        ]
                    ),),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
