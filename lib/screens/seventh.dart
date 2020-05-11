import 'package:flutter/material.dart';
class LoginUI07 extends StatefulWidget {
  @override
  _LoginUI07State createState() => _LoginUI07State();
}

class _LoginUI07State extends State<LoginUI07> {

  bool isObscured = true; //for enabling and disabling obscurity in password field

  @override
  Widget build(BuildContext context) {
    final color = Colors.black;
    final lightColor = Colors.grey;
    final primaryColor = Colors.white;
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Material(
          child: Column(
            children: <Widget>[
              Container(
                height: height *0.4,
                color: lightColor,
                child: Center(
                  child: Text(
                    'Add image here',
                  )
                )
      ),
            Container(
              margin: EdgeInsets.symmetric(horizontal:20, vertical:20),
              width: width,
              height: height * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Sign In',
                    style: TextStyle(
                      color: color,
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Please fill in all fields',
                    style: TextStyle(
                      color: lightColor[400],
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    style: TextStyle(
                      fontSize:18
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email, color: lightColor,),
                      labelText: 'Email Address',
                      labelStyle: TextStyle(
                        color:lightColor,
                        fontSize:16
                      )
                    )
                  ),
                  SizedBox(height:20),
                  TextField(
                    style: TextStyle(
                      fontSize:18
                    ),
                    obscureText: isObscured,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline, color: lightColor,),
                      suffixIcon: IconButton(
                        icon: isObscured ? Icon(Icons.visibility_off, color:lightColor): 
                        Icon(Icons.visibility, color:lightColor),
                        onPressed: (){
                          setState((){
                            isObscured = !isObscured;
                          });
                        }),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color:lightColor,
                        fontSize:16
                      )
                    )
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      InkWell(
                        onTap: (){},
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            fontSize:16,
                            color: lightColor[400]
                          )
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 50,
                    width: width,
                    child: FlatButton(
                      splashColor: lightColor,
                      color: color,
                      onPressed: (){},
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize:16,
                          fontWeight:FontWeight.w600,
                          color: primaryColor
                        ),
                      )),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have an account?",
                        style: TextStyle( 
                          color: lightColor[400],
                          fontSize: 14

                        )
                      ),
                      SizedBox(width:5),
                      InkWell(
                        onTap: (){},
                        child: Text(
                          "Sign Up",
                          style: TextStyle( 
                            color: color,
                            fontWeight: FontWeight.bold,
                            fontSize: 16

                          )
                        ),
                      ),
                    ],)
                ],),
            )
            ],
          ),
    );
  }
}