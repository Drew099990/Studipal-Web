import 'package:flutter/material.dart';
import 'package:studipal_web/screens/home.dart';
import 'package:studipal_web/screens/mobile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showDisplay = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxHeight > 700;

          return isMobile ? Mobile() : Home();
        },
      ),
    );
  }
}
