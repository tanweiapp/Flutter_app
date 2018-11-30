import 'package:flutter/material.dart';
class ImageList extends StatelessWidget
{
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Iamge List',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Iamge List'),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.network(
              'http://jspang.com/static/upload/20181111/G-wj-ZQuocWlYOHM6MT2Hbh5.jpg'
            ),
             new Image.network(
              'http://jspang.com/static/upload/20181109/1bHNoNGpZjyriCNcvqdKo3s6.jpg'
            ),
             new Image.network(
              'http://jspang.com/static/myimg/typescript_banner.jpg'
            ),
             new Image.network(
              'http://jspang.com/static/myimg/smile-vue.jpg'
            ),
          ],
        ),
      ),
    );
  }
}