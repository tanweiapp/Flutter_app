import 'package:flutter/material.dart';
class StudyFirst extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'StudyFirst',
      home: new MyScaffold(),
    );
  }
}

class MyScaffold extends StatelessWidget
{
  Widget build(BuildContext context){
    return Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text(
              'Hello World!',
            style:Theme.of(context).primaryTextTheme.title
            ),
          ),
          new Expanded(
            child: new Center(
              child: Text('Hello World!====> Hello World! ====> Hello World!'),
            ),
          )
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget{
  MyAppBar({this.title});
  final Widget title;
  Widget build(BuildContext context){
    return new Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: new BoxDecoration(
        color: Colors.blue[400]
      ),
      child: Row(
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: (){
              print('点击menu');
            },
          ),
          new Expanded(
            child: new Center(
              child: title,
            ),
          ),
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Navigation search',
            onPressed: (){
              print('点击search');
            },
          ),
        ],
      ),
    );
  }
}