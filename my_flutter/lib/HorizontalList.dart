import 'package:flutter/material.dart';

class MyHorizontalList extends StatelessWidget{
  Widget build(BuildContext context){
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
           width:180.0,
            color: Colors.lightGreenAccent,
        ),
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
    );
  }
}
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
            child: MyHorizontalList(),
          ),
        ),
      ),
    );
  }

  // Widget build(BuildContext context){ //全部写一起
  //   return MaterialApp(
  //     title: 'Horizontal List',
  //     home: Scaffold(
  //       appBar: new AppBar(
  //         title: new Text('Horizontal List'),
  //       ),
  //       body: Center(
  //         child: Container(
  //           height: 200,
  //           child: new ListView(
  //             scrollDirection: Axis.horizontal,
  //             children: <Widget>[
  //               new Container(
  //                 child: new Image.network(
  //                   'http://jspang.com/static/myimg/smile-vue.jpg',
  //                   fit: BoxFit.contain,
  //                 ),
  //                 width: 180,
  //                 color: Colors.lightBlue,
  //               ),
  //               new Container(
  //                 width: 180,
  //                 color: Colors.greenAccent,
  //               ),
  //               new Container(
  //                 width: 180,
  //                 color: Colors.deepPurpleAccent,
  //               ),
  //               new Container(
  //                 width: 180,
  //                 color: Colors.deepOrangeAccent,
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}