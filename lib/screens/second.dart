import 'package:flutter/material.dart';

class LoginUI02 extends StatefulWidget {
  LoginUI02({Key key}) : super(key: key);

  @override
  _LoginUI02State createState() => _LoginUI02State();
}

class _LoginUI02State extends State<LoginUI02> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Material(
      color: Colors.black,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/undraw_adventure_4hum.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.grey[800], BlendMode.darken)
                )
            ),
         child: Stack(
           children: <Widget>[
             Positioned(
               top: height * 0.2,
               left: 50,
               right: 50,
               child: FlutterLogo(
                 colors: Colors.amber,
                 size:100
               )
               ),
              Positioned(
                top: height * 0.5,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 50,
                      child: RaisedButton(
                        elevation: 0,
                            onPressed: (){},
                            color: Colors.transparent,
                            textColor: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Login',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                                )
                                ),
                                Expanded(
                              child: Divider(
                                thickness: 2,
                                endIndent: 30,
                                color: Colors.redAccent,))
                              ],
                            ),
                            ),    
                    )
                    ],
                )
              ),
              Positioned(
                top: height * 0.5,
                left: 100,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 50,
                      child: RaisedButton(
                        elevation: 0,
                            onPressed: (){},
                            color: Colors.transparent,
                            textColor: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Register',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                                )
                                ),
                                Expanded(
                              child: Divider(
                                thickness: 2,
                                 endIndent: 30,
                                color: Colors.redAccent,))
                              ],
                            ),
                            ),    
                    )
                    ],
                )
              ),
            Positioned(
              top: height * 0.6,
              child: Container(
                width: width,
                height: height * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        hintText: 'Email Address',
                        hintStyle: TextStyle(
                          color: Colors.grey[100],
                        ),
                        border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color:Colors.white,
                                        width: 2
                                        )
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
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
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.grey[100],
                        ),
                        border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color:Colors.white,
                                        width: 2
                                        )
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
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
            bottom: 0,
            child: Container(
              width: width,
              height: height *0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                bottomRight:Radius.circular(10)
                ),
              ),
              child: RaisedButton(
                onPressed: (){},
                color: Colors.redAccent,
                textColor: Colors.white,
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ),
            )
           ],
         ),
      ),
    );
  }
}