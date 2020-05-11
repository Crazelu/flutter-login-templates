import 'package:flutter/material.dart';

class LoginUI03 extends StatefulWidget {
  @override
  _LoginUI03State createState() => _LoginUI03State();
}

class _LoginUI03State extends State<LoginUI03> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Material(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: height * 0.2,
                    left: 50,
                    right:50,
                    child: FlutterLogo(
                      colors: Colors.lightGreen,
                      size: 100
                    ),
                  ),
                Positioned(
                  top: height * 0.5,
                  left: width * 0.2,
                  child: Container(
                    width: width,
                    child: Text(
                      'hello!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.w700
                      )
                    ),
                  )
                ),
                Positioned(
                top: height * 0.6,
                child: Container(
                  width: width * 0.8,
                  height: height * 0.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          fillColor: Colors.grey[700].withOpacity(0.5),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.white
                          ),
                          hintText: 'Username',
                          hintStyle: TextStyle(
                            color: Colors.grey[100],
                          ),
                          border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          color:Colors.white,
                                          width: 2
                                          )
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          color:Colors.grey,
                                          width: 2
                                          )
                                      ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          fillColor: Colors.grey[700].withOpacity(0.5),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.white
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.grey[100],
                          ),
                          border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          color:Colors.white,
                                          width: 2
                                          )
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          color:Colors.grey,
                                          width: 2
                                          )
                                      ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

                Positioned(
                  top: height * 0.8,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: width * 0.37,
                        height: height * 0.06,
                        child: RaisedButton(
                          splashColor: Colors.lightBlueAccent,
                          onPressed: (){},
                          color: Colors.transparent,
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              color: Colors.grey[200],
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular((width *0.3) /2),
                            side: BorderSide(
                                          color:Colors.grey,
                                          width: 2
                                          )
                          )
                          
                          ),
                      ),
                      SizedBox(width:20),
                      Container(
                        width: width * 0.37,
                        height: height * 0.06,
                        child: RaisedButton(
                          onPressed: (){},
                          color: Colors.lightBlueAccent,
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular((width *0.3) /2),
                            side: BorderSide(
                                          color:Colors.white,
                                          width: 2
                                          )
                          )
                          
                          ),
                      )
                    ],
                  )
                ),
                
                Positioned(
                  top: height * 0.9,
                  left: width * 0.1,
                  child: Row(
                    children: <Widget>[
                      Text(
                        'or connect with',
                        style: TextStyle(
                          color: Colors.grey[100],
                          fontSize: 14
                        )
                      ),
                      SizedBox(width:7),
                      InkWell(
                        onTap: (){},
                        child: Text(
                          'Facebook',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.lightBlue,
                            fontSize: 14
                          )
                        ),
                      ),
                      
                    ],
                  )
                )
                ],
              ),
            )
      ),
    );
  }
}