import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: contactus(),));
}
class contactus extends StatelessWidget {
  const contactus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us", style: TextStyle(color: Colors.white),),
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
        backgroundColor: Colors.deepPurple.shade400,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 50),
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset('image/contact.png'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("FEEL FREE TO CONTACT US", style: TextStyle(fontFamily: "Two", fontSize: 23, fontWeight: FontWeight.bold),),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(20, 80, 20, 10),
                        width: 2,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                      color: Color.fromARGB(10, 10, 10, 10),
                      borderRadius: BorderRadius.circular(40),
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.shade400,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(Icons.mail, color: Colors.white,),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Email Us", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                              Text("info@gamecubeinfo.com", style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(20, 80, 20, 10),
                        width: 2,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                      color: Color.fromARGB(10, 10, 10, 10),
                      borderRadius: BorderRadius.circular(40),
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.shade400,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset('image/wtsp.png',scale: 2, color: Colors.white,),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Whatsapp", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                              Text("+91-9876543210", style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              // Social Media Icons
              Container(
                margin: EdgeInsets.only(top: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.shade400,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset('image/insta.png',scale: 2, color: Colors.white,),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.shade400,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset('image/in.png',scale: 2, color: Colors.white,),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.shade400,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset('image/facebook.png',scale: 2, color: Colors.white,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
