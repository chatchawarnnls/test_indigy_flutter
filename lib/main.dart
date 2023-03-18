import 'package:flutter/material.dart';

import '../view/homepage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff1c232d),
      ),
      home: MyHomePage(title: 'รายชื่อผู้ติดต่อ'),
    );
  }
}

