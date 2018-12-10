import 'package:flutter/material.dart';

class RowComponent extends StatelessWidget{
  @override
  Widget build(BuildContext contect){
    return MaterialApp(
      title: 'Row Component',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Row Component'),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 15,right: 15,top: 15),
          child: Row(
          children: <Widget>[
            new RaisedButton(
              onPressed: (){
              },
              color: Colors.redAccent,
              child: new Text('红色按钮'),
            ),
            Expanded(
              child: new RaisedButton(
              onPressed: (){

              },
              color: Colors.lightBlueAccent,
              child: new Text('蓝色按钮'),
            ),
            ),
            new RaisedButton(
              onPressed: (){

              },
              color: Colors.yellowAccent,
              child: new Text('黄色按钮'),
            ),
            new RaisedButton(
              onPressed: (){

              },
              color: Colors.greenAccent,
              child: new Text('绿色按钮'),
            ),
            
          ],
        ),
        )
      ),
    );
  }
}