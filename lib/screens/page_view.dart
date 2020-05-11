import 'package:flutter/material.dart';
import 'package:flutter_login_templates/screens/eight.dart';
import 'package:flutter_login_templates/screens/fifth.dart';
import 'package:flutter_login_templates/screens/first.dart';
import 'package:flutter_login_templates/screens/fourth.dart';
import 'package:flutter_login_templates/screens/second.dart';
import 'package:flutter_login_templates/screens/seventh.dart';
import 'package:flutter_login_templates/screens/sixth.dart';
import 'package:flutter_login_templates/screens/tenth.dart';
import 'package:flutter_login_templates/screens/third.dart';

import 'ninth.dart';

class Loader extends StatefulWidget {
  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {

  final widgetList = [LoginUI01(), LoginUI02(), LoginUI03(), LoginUI04(), LoginUI05(), LoginUI06(), 
  LoginUI07(),LoginUI08(), LoginUI09(), LoginUI10()]; 

  @override
  Widget build(BuildContext context) {
    return Material(
      child: PageView.builder(
        itemBuilder: (context, index){
          return widgetList[index];
        },
        itemCount: widgetList.length,
        )
      
    );
  }
}