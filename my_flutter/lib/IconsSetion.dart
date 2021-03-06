import 'package:flutter/material.dart';
import 'IconLabel.dart';
class IconsSetion extends StatelessWidget{
Widget build(BuildContext context){
    Color color = Theme.of(context).primaryColor;
  return new Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      new IconLabel(
        icon:new Icon(
            Icons.call,
            color: color,
        ),
        title: 'CALL',
      ),
       new IconLabel(
        icon:new Icon(
            Icons.near_me,
            color: color,
        ),
        title: 'ROUTE',
      
      ),
       new IconLabel(
        icon:new Icon(
            Icons.share,
            color: color,
        ),
        title: 'SHARE',
      ),
    ],
  );
  }
}
