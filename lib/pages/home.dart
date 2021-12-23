import 'package:flutter/material.dart';
import 'package:se494_third_app/pages/details.dart';

class MyHomePage extends StatefulWidget {
  final title;
  MyHomePage(this.title);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List _myData = List<String>.generate(100, (index) => "account $index");
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
              leading: const Icon(Icons.account_circle,color: Colors.purple,),
              title: Text(_myData[index]),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailsPage(
                      title: _myData[index],
                      detail: _myData[index],
                    )
                ));
              },
            ),
          );
        },
        itemCount: _myData.length,
      ),
    );
  }
}
