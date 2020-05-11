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
        color: Color.fromARGB(255, 220, 240, 220),
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
                           fontSize:18
                         ),
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
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(
                               color: Colors.grey.withOpacity(0.5),
                             )
                           )
                         )
                       ),
                       TextField(
                         style: TextStyle(
                           fontSize:18
                         ),
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
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(
                               color: Colors.grey.withOpacity(0.5),
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
                   height: height * 0.08,
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
                           Container(
                             height: height * 0.065,
                             width: height * 0.065,
                             decoration: BoxDecoration(
                               color: Colors.teal,
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
                              child: Text(
                                'f',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600
                                )
                              )
                             ),
                           ),
                           SizedBox(width:20),
                           Container(
                             height: height * 0.065,
                             width: height * 0.065,
                             decoration: BoxDecoration(
                               color: Colors.teal,
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
                              child: Text(
                                'G',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600
                                )
                              )
                             ),
                           ),
                           SizedBox(width:20),
                           Container(
                             height: height * 0.065,
                             width: height * 0.065,
                             decoration: BoxDecoration(
                               color: Colors.teal,
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
                              child: Text(
                                't',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600
                                )
                              )
                             ),
                           ),
                         ],
                         ),
                       SizedBox(height: 25,),
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