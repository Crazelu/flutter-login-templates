import 'package:flutter/material.dart';

class LoginUI10 extends StatefulWidget {
  @override
  _LoginUI10State createState() => _LoginUI10State();
}

class _LoginUI10State extends State<LoginUI10> {

    final color = Colors.white;
    final darkColor = Colors.black;
    final primaryColor = Colors.redAccent.withOpacity(.5);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Material(
          child: Stack(
            children:[
              Container(
                height: height*.7,
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(darkColor.withOpacity(.5), BlendMode.darken)
                    )
                ),
      ),
      Stack(
        children: <Widget>[
          _logo(height, width),
          _loginWithTextFieldsAndButton(height, width),
         _signup(height, width)
          
        ],
      )
            ]
          ),
    );
  }

  _logo(double height, double width) {
    return Positioned(
      top: height *.1,
      left: width *.35,
      child: FlutterLogo(
        colors: Colors.grey,
        size:100
      )
    );
  }

  _loginWithTextFieldsAndButton(double height, double width) {
    return Positioned(
      top: height *.3,
      left: width * .1,
      right: width * .1,
      child: Container(
        height: height * .5,
        width: width,
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'LOGIN',
                style: TextStyle(
                  color: color,
                  fontSize: 24,
                  fontWeight: FontWeight.w600
                )
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              cursorColor: darkColor,
              style: TextStyle(
                fontSize: 16
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: color,
                hintText: 'Enter your username',
                hintStyle: TextStyle(
                  color: darkColor,
                  fontWeight: FontWeight.w600
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: color
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: color
                  )
                )
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              cursorColor: darkColor,
              obscureText: true,
              style: TextStyle(
                fontSize: 16
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: color,
                hintText: 'Enter your password',
                hintStyle: TextStyle(
                  color: darkColor,
                  fontWeight: FontWeight.w600
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: color
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: color
                  )
                )
              ),
            ),
            SizedBox(height: 40,),
            Container(
              height: 50,
              width: width,
              child: RaisedButton(
                splashColor: Colors.grey[200],
                color: primaryColor,
                onPressed: (){},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: color,
                    fontSize: 16
                  )
                ),
                ),
            )
          ],)
      ),
    );
  }

  _signup(double height, double width) {
        return  Positioned(
            top: height * .8,
            left: width * .4,
            right: width * .4,
            child: InkWell(
              splashColor: primaryColor,
              onTap: (){},
              child: Text(
                'SIGN UP',
                style: TextStyle(
                  height: 2,
                  color: darkColor,
                  fontSize: 18
                )
              )
            ),
          );
  }

}