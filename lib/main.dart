import 'package:flutter/material.dart';
import 'package:flutter_apptask1/screens/Forget.dart';
import 'package:flutter_apptask1/screens/Login.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/log',
      routes: {
        '/log': (context) => Login(),
        '/forget': (context) => Forget(),
      },
    );
  }
}
