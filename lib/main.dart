import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(HomePage());
}

class MyApp extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _MyAppState();
    }
}

class _MyAppState extends State<MyApp>{
  List<String> _products=['Food Tester'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home page First'),
        ),
        body: Column(children: _products.map((element) => Card(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    _products.add('abcdef');
                  });
                },
                child: Text('Add Product'),)
              ),
              Center(child: Text('Test widget')),
              Text('Text 2'),
              Image.asset('assets/1.jpg'),
              //Text('Text 3'),
              //Image.asset('assets/dribbble_shot.gif'),
            ],
          ),
        )).toList(),
      ),
    ),);
}}