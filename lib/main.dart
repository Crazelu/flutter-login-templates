import 'package:flutter/material.dart';
import 'package:flutter_login_templates/screens/page_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Templates',
      home: Loader(),
    );
  }
}