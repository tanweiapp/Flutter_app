import 'package:flutter/material.dart';
class IconLabel  extends StatelessWidget{
   IconLabel({this.icon,this.title}):super();
  
  final Icon icon;
  final String title;
  Widget build(BuildContext context){
    Color color = Theme.of(context).primaryColor;
    return Column(
      children: <Widget>[
        icon,
      new Container(
        margin: EdgeInsets.only(top: 8.0),
        child: new Text(
          title,
          style:TextStyle(
            fontSize:12,
            fontWeight: FontWeight.w400,
            color: color
          )
        ),
      ),
      ],

    );
  }
}