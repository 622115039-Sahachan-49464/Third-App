import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  String title;
  String detail;
  DetailsPage({required this.title, required this.detail});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(widget.detail),
      ),
    );
  }
}
