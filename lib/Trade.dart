import 'package:flutter/material.dart';

class TradePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trade',
      home: Scaffold(
        appBar: _appBar(),
      ),
    );
  }
}

Widget _appBar() {
  return AppBar(
    title: Text('Trade'),
  );
}
