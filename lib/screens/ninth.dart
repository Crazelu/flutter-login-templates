import 'package:flutter/material.dart';

class LoginUI09 extends StatefulWidget {
  @override
  _LoginUI09State createState() => _LoginUI09State();
}

class _LoginUI09State extends State<LoginUI09> {
  final color = Colors.white;
    final darkColor = Colors.black;
    final primaryColor = Colors.redAccent;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Material(
      color: color,
          child: Stack(
            children: <Widget>[
              Container(
                height: height*.58,
                width: width,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  )
                ),
      ),
      Stack(
                    children: <Widget>[
                      _loginWithDivider(height, width),
                      _textFieldsWithForgotPassword(height, width),
                      _rowOfButtons(height, width),
                      _bottomContainer(height, width)
                    ],
                  ),
            ],
          ),
    );
  }

  _loginWithDivider(double height, double width) {
    return Positioned(
      top: height*0.2,
      left: width*.08,
          child: Container(
          height: height *.15,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Login',
                style: TextStyle(
                  color: color,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                )
              ),
              SizedBox(height:10),
              Divider(
                color: color,
                thickness: 2,

                endIndent: width*.92,
              )
            ],),
        ),
    );
  }

  _textFieldsWithForgotPassword(double height, double width){
    return Positioned(
      top:height*.3,
      left: width*.08,
      right: width*.1,
      child: Container(
          height: height *0.25,
          width: width,
          color: primaryColor,
          child: Column(
            children: [
              TextField(
                cursorColor: color,
                style: TextStyle(
                    color: color,
                    fontSize:16
                  ),
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: color,
                  ),
                  
                )
              ),
              SizedBox(height:15),
              TextField(
                cursorColor: color,
                obscureText: true,
                style: TextStyle(
                    color: color,
                    fontSize:16
                  ),
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: color,
                  )
                )
              ),
              SizedBox(height:15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                    onTap: (){},
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                    color: color,
                    fontSize:12
                  ),
                    )
                  )
                ],)
            ]
          ),
        ),
    );
  }

  _rowOfButtons(double height, double width){
    return Positioned(
      top: height*.55,
      left: width*.08,
      child: Row(
          children: <Widget>[
            _buttons(height, width, 'SIGNUP', color,  Colors.grey[400]),
            SizedBox(width:20),
            _buttons(height, width, 'LOGIN', Colors.blueGrey[900], color)
          ],
        ),
    );
  }
  
  _buttons(double height, double width, String text, Color buttonColor, Color textColor){
    return Container(
          height: height *.05,
          width: width * .4,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400],
                blurRadius: 2,
                offset: Offset(0,5)
              )
            ]
          ),
          child: RaisedButton(
            color: buttonColor,
            onPressed: (){},
            shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 16
              )
            )
            )
        );
  }

  _bottomContainer(double height, double width){
      return Positioned(
        top: height*.62,
        child: Container(
            height: height*0.4,
            width: width,
            color: color,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'or login with',
                  style: TextStyle(
                    color: darkColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  )
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _socialIconButton(height, 'assets/icons8-google-48.png', (){}),
                    SizedBox(width: 20,),
                    _socialIconButton(height, 'assets/icons8-facebook-48.png', (){}),
                    SizedBox(width: 20,),
                    _socialIconButton(height, 'assets/icons8-twitter-48.png', (){}),

                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "DON'T HAVE AN ACCOUNT?",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize:12
                      ),
                    ),
                    SizedBox(width:5),
                    InkWell(
                      onTap: (){},
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: darkColor,
                          fontSize:14
                        ),
                      ),
                    ),

                  ],
                )

              ],)

          ),
      );
  }

  _socialIconButton(double height, String imgUrl, Function pressed){
    //Function pressed indicates action to be performed when a particular social button is clicked
    return InkWell(
      onTap: pressed,
          child: Container(
              height: height *.05,
              width: height *.05,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[200],
                  blurRadius: 10
                )
              ]
              ),
              child: Image(
                image: AssetImage(imgUrl),)
      ),
    );
  }
}