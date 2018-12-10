import 'package:flutter/material.dart';

class DynamicListView extends StatelessWidget{

  final List<String> items;
<<<<<<< HEAD
  // final List<String> items;
  DynamicListView({Key key,@required this.items}):super(key:key);
  // DynamicListView({Key key, @required this.items}):super(key:key);
=======
  DynamicListView({Key key, @required this.items}):super(key:key);
>>>>>>> Dev

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Dynamic ListView',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic ListView'),
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,index){
            return new ListTile(
              title: new Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}