import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget
{
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Horizontal List',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Horizontal List'),
        ),
        body: Center(
          child: Container(
            height: 200,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                new Container(
                  child: new Image.network(
                    'http://jspang.com/static/myimg/smile-vue.jpg',
                    fit: BoxFit.contain,
                  ),
                  width: 180,
                  color: Colors.lightBlue,
                ),
                new Container(
                  width: 180,
                  color: Colors.greenAccent,
                ),
                new Container(
                  width: 180,
                  color: Colors.deepPurpleAccent,
                ),
                new Container(
                  width: 180,
                  color: Colors.deepOrangeAccent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}