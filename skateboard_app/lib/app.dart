import 'package:flutter/material.dart';
import 'package:skateboard_app/customs.dart';
import 'package:skateboard_app/boardPage.dart';



class SkateboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: customPurple,
      ),
      home: BoardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}