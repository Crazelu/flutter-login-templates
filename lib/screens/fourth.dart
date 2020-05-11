import 'package:flutter/material.dart';

class LoginUI04 extends StatefulWidget {
  LoginUI04({Key key}) : super(key: key);

  @override
  _LoginUI04State createState() => _LoginUI04State();
}

class _LoginUI04State extends State<LoginUI04> with SingleTickerProviderStateMixin{

  Animation firstAnimation, secondAnimation, thirdAnimation;
  AnimationController animationController;

  @override
  initState(){
    super.initState();
    animationController = AnimationController(
      duration: Duration(milliseconds: 2000),
      vsync: this
    );
    firstAnimation = Tween(
      begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Curves.fastOutSlowIn
        ));
      
    secondAnimation = Tween(
      begin: 1.0, end:0.0
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(0.6, 1.0, curve: Curves.fastOutSlowIn)));
    thirdAnimation = Tween(
      begin: -2.0, end:0.0
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(0.7, 1.0, curve: Curves.fastOutSlowIn)));

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child){
        return Material(
      color: Colors.blueGrey[800],
          child: Container(
         child: Stack(
           children: <Widget>[
             
               Positioned(
                 top: height * 0.2,
                 left: width * 0.3,
                 child: Transform(
               transform: Matrix4.translationValues(0.0, firstAnimation.value * width, 0.0),
                  child: FlutterLogo(
                   colors: Colors.cyan,
                   size: 100
                 )
                 ),
             ),
            
              Positioned(
                top: height * 0.4,
                left: 0,
                right: width - width * 0.85,
                child: Transform(
              transform: Matrix4.translationValues(secondAnimation.value * width, 0.0, 0.0),
                child: Container(
                  width: width,
                  height: height * 0.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        style: TextStyle(
                          fontSize: 18
                        ),
                          decoration: InputDecoration(
                            hintText: 'Email Address',
                            hintStyle: TextStyle(
                              color: Colors.blueGrey[900],
                              fontSize: 15
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            
                        ),
                                          borderSide: BorderSide(
                                            color:Colors.white,
                                            width: 2
                                            )
                                        ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                            color:Colors.white,
                                            width: 2
                                            ),
                              borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            
                        ),
                            )
                          ),
                        ),
                        SizedBox(height: 20,),
                      TextField(
                        style: TextStyle(
                          fontSize: 18
                        ),
                        obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Colors.blueGrey[900],
                              fontSize: 15
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                          borderRadius:BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            
                        ),
                                          borderSide: BorderSide(
                                            color:Colors.white,
                                            width: 2
                                            )
                                        ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                            color:Colors.white,
                                            width: 2
                                            ),
                              borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                        ),
                          ),
                        ),
                        )
                    ],
                    ),
                ),
                ),
            ),

            
              Positioned(
                top: height * 0.7,
                left:  width - width * 0.85,
                child: Transform(
              transform: Matrix4.translationValues(thirdAnimation.value * width, 0.0, 0.0),
                child: Row(
                  children: [
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.lightBlueAccent,
                      onTap: (){},
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Colors.lightBlue[500],
                          fontWeight: FontWeight.w500,
                          fontSize: 16

                        )
                      ),
                    ),
                    SizedBox(width:50),
                    Container(
                      height: height * 0.08,
                      width: width * 0.4,
                      child: RaisedButton(
                        splashColor: Colors.indigo,
                        color: Colors.lightBlueAccent,
                        onPressed: (){},
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.grey[200],
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                          )
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                        ),
                        ),
                        ),
                    )
                  ]
                ),
                ),
            ),

            
              Positioned(
                top: height * 0.9,
                left: width * 0.2,
                child: Transform(
              transform: Matrix4.translationValues(thirdAnimation.value * width, 0.0, 0.0),
              child: Row(
                      children: <Widget>[
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Colors.grey[100],
                            fontSize: 16
                          )
                        ),
                        SizedBox(width:7),
                        InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.lightBlueAccent,
                          onTap: (){},
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w500,
                              color: Colors.lightBlue[500],
                              fontSize: 16
                            )
                          ),
                        ),
                        
                      ],
                    ),
              ),
            )
           ],
         ),
      ),
    );
      });
  }
}