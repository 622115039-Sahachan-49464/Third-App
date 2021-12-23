import 'package:flutter/material.dart';
import 'package:se494_third_app/pages/home.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Third app from SE494',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage("Third App"),
    );
  }
}