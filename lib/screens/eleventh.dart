import 'package:flutter/material.dart';

class LoginUI11 extends StatefulWidget {
  LoginUI11({Key key}) : super(key: key);

  @override
  _LoginUI11State createState() => _LoginUI11State();
}

class _LoginUI11State extends State<LoginUI11> {
  bool isObscured = true;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Material(
      color: Colors.blueAccent,
          child: Column(
        children: <Widget>[
          Container(
            height: height * .4,
            width: width,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40))
            ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(
                   'Hello!',
                   style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white, fontWeight: FontWeight.w700)
                 )
               ]
             ),
          ),Container(
            height: height * .6,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(50))
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.lightBlueAccent.withOpacity(.1),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width:2
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width:2
                        )
                      ),
                    )
                  ),
                  SizedBox(height:20),
                  TextField(
                    obscureText: isObscured,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.lightBlueAccent.withOpacity(.1),
                      suffixIcon: IconButton(
                        icon: Icon(
                         isObscured? Icons.visibility_off: Icons.visibility,
                          color: Colors.grey[300]
                        ),
                        onPressed: (){
                          setState(() {
                            isObscured = !isObscured;
                          });
                        }),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width:2
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width:2
                        )
                      ),
                    )
                  ),
                  SizedBox(height:30),
                  Container(
                    width: width,
                    height: 50,
                    child: RaisedButton(
                      onPressed: (){},
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        )
                      )
                    ),
                  ),
                  SizedBox(height:40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _button('assets/icons8-google-48.png', width),
                      _button('assets/icons8-facebook-48.png', width),

                    ],),
                    SizedBox(height:30),
                    Center(
                      child: InkWell(
                        onTap: (){},
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize:18,
                            fontWeight: FontWeight.w500
                          )
                        )
                      ),
                    )
                ]
              ),
            )
          )
        ],
      ),
    );
  }

  _button(String imgurl, double width) {
    return Container(
      width: width * .4,
      child: RaisedButton(
            onPressed: (){},
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Colors.black,
              )
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width:20,
                  height:20,
                  child: Image(image:AssetImage(imgurl))),
                  SizedBox(width: 20,),
                Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16
                  )
                )
              ],),
            ),
    );
  }
}