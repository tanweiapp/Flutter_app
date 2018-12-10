import 'package:flutter/material.dart';

class ColumnComponent extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Column Component',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Column Component'),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 15,right: 15),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: new Text('data'),
            ),
           Expanded(
             child:  new Text('32222222222232323'),
           ),
           Center(
            child: new Text('wewqedq21312e32412321321321321321wewqedq21312e32412321321321321321'),
            ),
          ],
        ),
        )
      ),
    );
  }
}