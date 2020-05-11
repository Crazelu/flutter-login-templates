import 'package:flutter/material.dart';

class LoginUI01 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _LoginUI01State();

}

class _LoginUI01State extends State<LoginUI01>{
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        color: Colors.redAccent,
        child: Stack(
          children: <Widget>[
            Container(
              height: height * 0.68,
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(.5), BlendMode.darken),
                  image: AssetImage('assets/image.jpg'),
                  fit: BoxFit.cover
                  )
              )
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: FlutterLogo(
                        colors: Colors.red,
                        size: 100
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top:70),
                          child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                          )
                        )
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 110),
                          child: Container(
                            height: height * 0.25,
                            color: Colors.transparent,
                            child: Column(
                              children: <Widget>[
                                TextField(
                                  cursorColor: Colors.white,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[700].withOpacity(0.5),
                                    hintText: 'Username',
                                    hintStyle: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 14
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
                                    
                                  )
                                ),
                                SizedBox(height:20),
                                TextField(
                                  obscureText: true,
                                  cursorColor: Colors.white,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[700].withOpacity(0.5),
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 14
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color:Colors.grey,
                                        width: 2
                                        )
                                    ),
                                  )
                                )
                              ],)
                          ),
                          ),
                        Padding(
                          padding: EdgeInsets.only(top: 300),
                          child: Container(
                            height: height * 0.08,
                            width: width,
                            child: RaisedButton(
                              color: Colors.white,
                              onPressed: (){} ,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Text('LOGIN',),
                              textColor: Colors.redAccent,
                              ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 380),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: [
                                Checkbox(
                                activeColor: Colors.white,
                                checkColor: Colors.black,
                                value: _value, 
                                onChanged: (value){
                                  setState(() {
                                    _value = value;
                                  });
                                }
                                ),
                                Text(
                                  'Keep me logged in',
                                  style: TextStyle(
                                    color: Colors.white
                                  )
                                ),]
                              ),
                                InkWell(
                                    onTap: (){},
                                    child: Text(
                                  'Forgot password?',
                                  style: TextStyle(
                                    color: Colors.white
                                  )
                                ),
                                  )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top:440),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                    color: Colors.white
                                  )
                                ),
                                SizedBox(width: 3,),
                                InkWell(
                                  onTap: (){},
                                  child: Text(
                                    "SIGN UP",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                    )
                                  ),
                                )
                              ],
                            ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            
          ],
        )
      ),
    );
  }

}