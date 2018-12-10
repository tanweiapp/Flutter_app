import 'package:flutter/material.dart';

class StackComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var stack = new Stack(
      alignment: const FractionalOffset(0.7, 0.0),
      children: <Widget>[
        new CircleAvatar(
            backgroundImage: new NetworkImage('http://jspang.com/static//myimg/blogtouxiang.jpg'),
            radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.lightBlue,
          ),
          padding: EdgeInsets.all(5.0),
          child: new Text('ssssss'),
        ),
      ],
    );
    return MaterialApp(
      title: 'Stack Component',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Stack Component'),
        ),
        body: Center(child: stack),
      ),
    );
  }
}