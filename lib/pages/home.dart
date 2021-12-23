import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final title;
  MyHomePage(this.title);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List _myData = ['apple','banana','papaya'];
  var _title;
  @override
  void initState() {
    _title = widget.title;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {},
            leading: FlutterLogo(),
            title: Text(_myData[0]),
          ),
          ListTile(
            onTap: () {},
            leading: FlutterLogo(),
            title: Text(_myData[1]),
          ),
          ListTile(
            onTap: () {},
            leading: FlutterLogo(),
            title: Text(_myData[2]),
          )
        ],
      ),
    );
  }
}
