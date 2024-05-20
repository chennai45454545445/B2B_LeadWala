import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: profilepage(),
  ));
}

class profilepage extends StatelessWidget {
  const profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 70),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "A LITTLE ABOUT YOU",
                      style: TextStyle(fontFamily: "Three", fontSize: 22),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      style: TextStyle(
                        color: Color.fromARGB(80, 52, 18, 18),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        prefixIcon: Icon(Icons.person, color:  Color.fromARGB(80, 52, 18, 18),),
                        fillColor: Color.fromARGB(10, 52, 15, 15),
                        filled: true,
                        hintText: 'GameCube Infotech',
                        hintStyle: TextStyle(color: Color.fromARGB(80, 52, 18, 18),),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(80, 52, 18, 18),
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(80, 52, 18, 18),
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: TextField(
                      style: TextStyle(
                        color: Color.fromARGB(80, 52, 18, 18),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        suffixText: 'Change Password',
                        prefixIcon: Icon(Icons.security, color:  Color.fromARGB(80, 52, 18, 18),),
                        fillColor: Color.fromARGB(10, 52, 15, 15),
                        filled: true,
                        hintText: '*******',
                        hintStyle: TextStyle(color: Color.fromARGB(80, 52, 18, 18),),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(80, 52, 18, 18),
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Color.fromARGB(80, 52, 18, 18),
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20,),
                    child: TextField(
                      style: TextStyle(
                        color: Color.fromARGB(80, 52, 18, 18),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        prefixIcon: Icon(Icons.mail, color:  Color.fromARGB(80, 52, 18, 18),),
                        fillColor: Color.fromARGB(10, 52, 15, 15),
                        filled: true,
                        hintText: 'gamecubeinfo@gmail.com',
                        hintStyle: TextStyle(color: Color.fromARGB(80, 52, 18, 18),),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(80, 52, 18, 18),
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(80, 52, 18, 18),
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: TextField(
                      style: TextStyle(
                        color: Color.fromARGB(80, 52, 18, 18),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        prefixIcon: Icon(Icons.phone, color:  Color.fromARGB(80, 52, 18, 18),),
                        fillColor: Color.fromARGB(10, 52, 15, 15),
                        filled: true,
                        hintText: '+91-9876543210',
                        hintStyle: TextStyle(color: Color.fromARGB(80, 52, 18, 18),),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(80, 52, 18, 18),
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(80, 52, 18, 18),
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20,),
                    child: TextField(
                      style: TextStyle(
                        color: Color.fromARGB(80, 52, 18, 18),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        prefixIcon: Icon(Icons.cabin, color:  Color.fromARGB(80, 52, 18, 18),),
                        fillColor: Color.fromARGB(10, 52, 15, 15),
                        filled: true,
                        hintText: 'GameCube Infotech Pvt. Ltd',
                        hintStyle: TextStyle(color: Color.fromARGB(80, 52, 18, 18),),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(80, 52, 18, 18),
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(80, 52, 18, 18),
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: TextField(
                      maxLines: 2,
                      style: TextStyle(
                        color: Color.fromARGB(80, 52, 18, 18),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        prefixIcon: Icon(Icons.house, color:  Color.fromARGB(80, 52, 18, 18),),
                        fillColor: Color.fromARGB(10, 52, 15, 15),
                        filled: true,
                        hintText: "Tagore marg, ajmer road, chitrakoot,\n"
                            "jaipur, rajasthan",
                        hintStyle: TextStyle(color: Color.fromARGB(80, 52, 18, 18),),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(80, 52, 18, 18),
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(80, 52, 18, 18),
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                              backgroundColor: Colors.purpleAccent,
                              minimumSize: Size(double.infinity, 55),
                            ),
                            onPressed: (){}, child: Text("Update", style: TextStyle(color: Colors.white),)),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
