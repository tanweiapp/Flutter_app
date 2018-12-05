import 'package:flutter/material.dart';
import 'TitleSection.dart';
import 'IconsSetion.dart';
import 'TextSection.dart';
class DetailPage extends StatelessWidget{
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: Text('注意布局代码'),
      ),
      body: new Column(
        children: <Widget>[
          // Image.network("https://www.baidu.com/img/bd_logo1.png",
           new Image.asset(
             'images/test',
            // width:600,
            height:240,
            // fit:BoxFit.cover
          ),
          new TitleSection(),
          new IconsSetion(),
          new TextSection(),
        ],
      ),
    );
  }
}