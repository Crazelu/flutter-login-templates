import 'package:flutter/material.dart';

class LoginUI12 extends StatefulWidget {
  @override
  _LoginUI12State createState() => _LoginUI12State();
}

class _LoginUI12State extends State<LoginUI12> {

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SafeArea(
          child: Material(
        color: Colors.grey[200],
            child: Stack(
              children: [
                Container(
                  height: height * .35,
                  width: width,
                  color: Colors.blue[700],
                  child: Align(
                    alignment: Alignment(-1.3, -3),
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blueAccent
                      )
                    )
                  ),
            
          ),

         
              Positioned(
                top: height * .2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: height *.7,
                    width: width - width*.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 20,),
                          Center(
                            child: Text(
                              'SIGN IN',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            ),
                            SizedBox(height:30),
                            _textField('Username', false, Icons.person),
                            SizedBox(height:30),
                            _textField('Password', true, Icons.lock_outline),
                            SizedBox(height:15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                InkWell(
                                  onTap: (){},
                                  child: Text(
                                    'Forgot password?',
                                    style: TextStyle(
                                      color: Colors.lightBlueAccent,
                                      fontSize: 15
                                    )
                                  )
                                )
                              ],),
                              SizedBox(height: 40,),
                          Container(
                            width: width,
                            height:50,
                            child: RaisedButton(
                              color: Colors.blueAccent,
                              onPressed: (){},
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)
                              ),
                              )
                          ),
                          SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              _button(width, Colors.deepOrangeAccent, 'assets/icons8-google-48.png', 'Google'),
                              _button(width, Colors.blue[700], 'assets/icons8-facebook-48.png', 'Facebook')
                            ],
                          ),
                          SizedBox(height:40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15
                                )
                              ),
                              SizedBox(width:5),
                              InkWell(
                                onTap: (){},
                                child: Text(
                                  "SIGN UP",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                              ),
                            ],
                          )
                        ],),
                    ),
                  ),
                ),
              )
          ]
        ),
      ),
    );
  }

  _textField(String hint, bool isObscured, IconData icon,){
    return TextField(
                    obscureText: isObscured,
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: hint,
                      hintStyle: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: 16
                      ),
                      prefixIcon: Icon(
                        icon,
                        color: Colors.lightBlueAccent,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1),
                        borderSide: BorderSide(
                          color: Colors.grey[400]
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1),
                        borderSide: BorderSide(
                          color: Colors.white
                        )
                      ),
                    ),
                  );
  }

  _button(double width, Color buttonColor, String imgurl, String text) {
    return Container(
      width: width * .38,
      height: 50,
      child: RaisedButton(
        onPressed: (){},
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
              child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width:30,
              height: 30,
              child: Image(
                image: AssetImage(imgurl),
              ),
            ),
            SizedBox(width:7),
            Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                )
              ),
          ],
        ),
      )
    );
  }
}