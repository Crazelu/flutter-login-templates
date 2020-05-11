import 'package:flutter/material.dart';

class LoginUI05 extends StatefulWidget {
  LoginUI05({Key key}) : super(key: key);

  @override
  _LoginUI05State createState() => _LoginUI05State();
}

class _LoginUI05State extends State<LoginUI05> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Material(
        color: Color.fromARGB(255, 220, 240, 250),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
           child: Column(
               children: <Widget>[
                 Container(
                   margin: EdgeInsets.only(top: height * 0.03),
                   height: height * 0.25,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: <Widget>[
                      FlutterLogo(
                           colors: Colors.green,
                           size: 100
                         ),
                       Text(
                           'Flutter Inc',
                           style: TextStyle(
                             fontSize: 28,
                             fontWeight: FontWeight.bold
                           )
                         ),
                     ],
                     ),
                 ),
                 Container(
                   margin: EdgeInsets.only(top: height * 0.05),
                   height: height * 0.3,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: <Widget>[
                       TextField(
                         style: TextStyle(
                           fontSize:18,
                           color: Colors.teal,
                         ),
                         cursorColor: Colors.white,
                         decoration: InputDecoration(
                           prefixIcon: Icon(Icons.email, color: Colors.teal),
                           hintText: 'Email',
                           hintStyle: TextStyle(
                             color: Colors.teal,
                           ),
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(
                               color: Colors.grey.withOpacity(0.5),
                             )
                           ),
                           focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(
                               color: Colors.white,
                             )
                           )
                         )
                       ),
                       TextField(
                         style: TextStyle(
                           fontSize:18,
                           color: Colors.teal
                         ),
                         cursorColor: Colors.white,
                         obscureText: true,
                         decoration: InputDecoration(
                           prefixIcon: Icon(Icons.lock_outline, color: Colors.teal),
                           hintText: 'Password',
                           hintStyle: TextStyle(
                             color: Colors.teal,
                           ),
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(
                               color: Colors.grey.withOpacity(0.5),
                             )
                           ),
                           focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(
                               color: Colors.white,
                             )
                           )
                         )
                       ),

                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Row(
                             children: <Widget>[
                               Checkbox(
                                 value: false,
                                 onChanged: (value){},
                                  activeColor: Colors.teal,
                                  checkColor: Colors.white,
                                 ),
                                 Text(
                                   'Remember me',
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontSize: 16
                                   )
                                 )
                             ],
                           ),
                           InkWell(
                             onTap: (){},
                             child: Text(
                               'Forgot password?',
                               style: TextStyle(
                                 color: Colors.teal,
                                 fontSize: 16,
                                 fontWeight: FontWeight.w600
                               ),
                             ),
                             )
                         ],
                       )
                     ],
                     )
                   
                 ),
                 Container(
                   margin: EdgeInsets.only(top:height * 0.01),
                   width: width,
                   height: 60,
                   decoration: BoxDecoration(
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey[400],
                         offset: Offset.fromDirection(360, 10),
                         blurRadius: 5
                       )
                     ]
                   ),
                   child: RaisedButton(
                     color: Colors.teal,
                     onPressed: (){},
                     textColor: Colors.white,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                     ),
                     child: Text(
                       'LOG IN',
                       style: TextStyle(
                         fontSize:18,
                         fontWeight: FontWeight.bold
                       ),
                     ),
                     )
                 ),
                 Container(
                   margin: EdgeInsets.only(top:height * 0.02),
                   height: height * 0.2,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           //Wrap individual containers in GestureDetector or InkWell widgets to implement onTap/onPressed properties
                           Container(
                             height: 40,
                             width: 40,
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10),
                               boxShadow: [
                       BoxShadow(
                         color: Colors.grey[400],
                         offset: Offset.fromDirection(360, 5),
                         blurRadius: 5
                       )
                     ]
                             ),
                             child: Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/icons8-facebook-48.png'
                                ),)
                             ),
                           ),
                           SizedBox(width:20),
                           Container(
                             height: 40,
                             width: 40,
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10),
                               boxShadow: [
                       BoxShadow(
                         color: Colors.grey[400],
                         offset: Offset.fromDirection(360, 5),
                         blurRadius: 5
                       )
                     ]
                             ),
                             child: Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/icons8-google-48.png'
                                ),)
                             ),
                           ),
                           SizedBox(width:20),
                           Container(
                             height: 40,
                             width: 40,
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10),
                               boxShadow: [
                       BoxShadow(
                         color: Colors.grey[400],
                         offset: Offset.fromDirection(360, 5),
                         blurRadius: 5
                       )
                     ]
                             ),
                             child: Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/icons8-twitter-48.png'
                                ),)
                             ),
                           ),
                         ],
                         ),
                       SizedBox(height: 30,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Text(
                             "Don't have an account?",
                             style: TextStyle(
                               fontSize:16,
                             )
                           ),
                           SizedBox(width:3),
                           InkWell(
                             onTap: (){},
                             child: Text(
                               'SIGN UP',
                               style: TextStyle(
                                 color: Colors.teal,
                                 fontSize: 16
                               )
                             )
                           )
                         ],
                       )
                     ],
                     )
                 )
               ],
           ),
        ),
            ),
      ),
    );
  }
}