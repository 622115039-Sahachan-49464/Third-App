import 'package:flutter/material.dart';
import 'package:se494_third_app/pages/details.dart';

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
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index){
          return Card(
            child: ListTile(
              leading: const FlutterLogo(),
              title: Text(_myData[index]),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsPage()));
              },
            ),
          );
        },
        itemCount: _myData.length,
      ),
    );
  }
}
