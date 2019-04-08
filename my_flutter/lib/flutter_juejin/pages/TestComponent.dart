import 'package:flutter/material.dart';

class TestComponent extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'TestComponent',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('TestComponent'),
        ),
        body: Center(
          child: Text('TestComponent'),
        ),
      ),
    );
  }
}