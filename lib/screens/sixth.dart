import 'package:flutter/material.dart';
import 'dart:math';

class LoginUI06 extends StatefulWidget {
  @override
  _LoginUI06State createState() => _LoginUI06State();
}

class _LoginUI06State extends State<LoginUI06> {
  @override
  Widget build(BuildContext context) {
    final color = Colors.blue[700];
    final primaryColor = Colors.white;
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SafeArea(
          child: Material(
        color: Colors.grey[100],
        child: Stack(
          children: <Widget>[
            Positioned(
              top: height * 0.15,
              right: width * 0.5,
              child: Transform.rotate(
                angle: pi *  90/360,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: height * 0.6,
                      width: height * 0.6,
                      color: color,
                    ),
                      Positioned(
                        top: height * 0.1,
                        right: 90,
                        left: (height * 0.5)/7,
                        child: Container(
                            height: height * 0.4,
                            width: height * 0.4 ,
                            color: primaryColor
                          ),
                      ),
                    
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height * 0.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'LOGO',
                          style: TextStyle(
                            color: color,
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        SizedBox(width: 20,),
                        FlutterLogo(
                          colors: Colors.blue,
                          size:30
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top:30),
                    child: Column(
                      children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        fillColor: primaryColor,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: color
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.grey[300],
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.grey[300],
                          )
                        ),
                      ),
                      
                    ),
                    SizedBox(height:20),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: primaryColor,
                        filled: true,
                        prefixIcon: Icon(Icons.lock_outline,
                          color: color
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.grey[300],
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.grey[300],
                          )
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        InkWell(
                          //implement forgot password logic in the onTap
                          onTap: (){},
                          child: Text(
                            'Forgot password',
                            style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontSize:16,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ],),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      child: Container(
                        height: height*0.07,
                        width: width,
                        decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[300],
                              blurRadius:2,
                              offset: Offset(0, 10)
                            )
                          ]
                        ),
                        child: RaisedButton(
                          color: primaryColor,
                          onPressed: (){},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          textColor: color,
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          )
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      
                        Text(
                          'Not yet registered?',
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                        ),
                        SizedBox(height:30),
                        Container(
                        height: height*0.07,
                        width: width * 0.5,
                        decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[300],
                              blurRadius:2,
                              offset: Offset(0, 10)
                            )
                          ]
                        ),
                        child: RaisedButton(
                          color: color,
                          onPressed: (){},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          textColor: primaryColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Sign up',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 10,),
                              Icon(
                                Icons.arrow_forward,
                                color: primaryColor
                              )
                            ],
                          ),
                          )
                      ),
                      ],
                    )
                ],),
                  )

                ],)
              ),
            )
          ],
        )
      ),
    );
  }
}