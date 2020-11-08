import 'package:flutter/material.dart';
import 'package:skateboard_app/customs.dart';
import 'package:skateboard_app/boardPage.dart';


void main() {
  runApp(SkateboardApp());
}

class SkateboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BoardPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: customPurple,
      ),
    );
  }
}