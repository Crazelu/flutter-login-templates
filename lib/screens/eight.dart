import 'package:flutter/material.dart';

class LoginUI08 extends StatefulWidget {
  @override
  _LoginUI08State createState() => _LoginUI08State();
}

class _LoginUI08State extends State<LoginUI08> {

  bool isObscured = true; //for enabling and disabling obscurity in password field

  @override
  Widget build(BuildContext context) {
    final color = Colors.black;
    final lightColor = Colors.grey;
    final primaryColor = Colors.white;
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Material(
      color: primaryColor,
          child: Column(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.amberAccent, Colors.deepOrangeAccent,]
                      )
                  ),
                  height: height * 0.3,
                  width: width,
                  child: Stack(
                    children: <Widget>[
                      CustomPaint(
                        painter: CurvePainter(height*0.3, width)
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:height*0.1, left: width*0.1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                                'LOGIN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:30,
                                  fontWeight: FontWeight.w600
                                )
                              ),
                            Divider(
                              endIndent: 290,
                              thickness: 3,
                              color:color
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ),
              Container(
                height: height * 0.2,
                width: width,
                child: Row(
                  children: <Widget>[
                    FlutterLogo(
                      colors: Colors.amber,
                      size:70
                    ),
                    SizedBox(width:20),
                    FittedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                         Text(
                              'Welcome',
                              style: TextStyle(
                                color: color,
                                fontSize: 30
                              )
                            ),
                            Text(
                              'Back',
                              style: TextStyle(
                                color: color,
                                fontSize: 30
                              )
                            ),
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal:20),
                height: height * 0.4,
                child: Column(
                  children: <Widget>[
                    TextField(
                      cursorColor: color,
                      style: TextStyle(
                        fontSize:18
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_outline, color:lightColor[400]),
                        labelText: 'USERNAME',
                        labelStyle: TextStyle(
                          color: lightColor[400],
                          fontWeight: FontWeight.w600,
                          fontSize: 14
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(
                            color: Colors.amberAccent
                          )
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(
                            color: lightColor
                          )
                        ),
                      )
                    ),
                    SizedBox(height:30),
                    TextField(
                      cursorColor: color,
                      style: TextStyle(
                        fontSize:18
                      ),
                      obscureText: isObscured,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_open, color:lightColor[400]),
                        suffixIcon: IconButton(
                        icon: isObscured ? Icon(Icons.visibility_off, color:lightColor): 
                        Icon(Icons.visibility, color:lightColor),
                        onPressed: (){
                          setState((){
                            isObscured = !isObscured;
                          });
                        }),
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                          color: lightColor[400],
                          fontWeight: FontWeight.w600,
                          fontSize: 14
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(
                            color: Colors.amberAccent
                          )
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(
                            color: lightColor
                          )
                        ),
                      )
                    ),
                    SizedBox(height:15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        InkWell(
                          onTap: (){},
                          child: Text(
                            'FORGOT PASSWORD?',
                            style: TextStyle(
                              color: lightColor[400],
                              fontSize:12
                            )
                          )
                        )
                      ],
                    ),
                  SizedBox(height: 50,),
                  Container(
                    height: 55,
                    width: width,
                    child: FlatButton(
                      color: Colors.blueGrey,
                      onPressed: (){},
                      child: Text(
                        'CONTINUE',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 18
                        )
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                      ),
                  )
                  ]
                  ,),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal:20),
                height: height*0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Divider(
                      color: lightColor,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "DON'T HAVE AN ACCOUNT?",
                          style: TextStyle(
                            color: lightColor[400],
                            fontSize: 13
                          )
                        ),
                        SizedBox(width: 5,),
                        InkWell(
                          onTap: (){},
                          child: Text(
                            'CREATE',
                            style: TextStyle(
                              color: Colors.deepOrangeAccent[200],
                              fontSize:14,
                              fontWeight: FontWeight.bold
                            )
                          )
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
        
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  double height;
  double width;
  CurvePainter(this.height, this.width);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, height* 0.8);
    path.quadraticBezierTo(width*0.25, height*0.75, width*0.38, height*0.8);
    path.quadraticBezierTo(width*0.4, height*0.8, width*0.5, height*0.85);
    path.quadraticBezierTo(width*0.7, height*0.91, width, height*0.85);
    path.lineTo(width, height);
    path.lineTo(0, height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CurvePainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CurvePainter oldDelegate) => false;
}