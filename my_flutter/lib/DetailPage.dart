import 'package:flutter/material.dart';
import './TitleSection.dart';
class DetailPage extends StatelessWidget{
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: Text('注意布局代码'),
      ),
      body: new Column(
        children: <Widget>[
          new Image.asset(
            './images/test.jpg',
            width:600,
            height:240,
            fit:BoxFit.cover
          ),
          new TitleSection()
        ],
      ),
    );
  }
}