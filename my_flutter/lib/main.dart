import 'package:flutter/material.dart';
import 'DoubanTheatersWidget.dart';
import 'DetailPage.dart';
import 'StudyFirst.dart';
// import './flutter_juejin/MyApp.dart';
import './DynamicListView.dart';
import './RowComponent.dart';
import './ColumnComponent.dart';
import './StackComponent.dart';
import './Example.dart';

// void main() {
//   runApp(DoubanTheatersWidget()); //  豆瓣入口
// }
// void main(){
//   runApp(Example());
// }

// void main() {
//   runApp(
//     new MaterialApp( // 加载本地图片的入口
//       title:'My App',
//       home:new DetailPage()
//     )
//   );
// }
void main() => runApp(MyApp());// 掘金入口

// void main()=>(DynamicListView(// 动态加载 listView 
// items: new List<String>.generate(1000, (i)=>"Item $i")
// // items: new List<String>.generate(10000, (i)=>"Item $i")
// ));


// void main() => runApp(DynamicListView(
//   items: new List<String>.generate(1000, (i)=>"Item $i")
//   // items:new List<String>.generate(10000, (i)=>"Item $i")
// ));



// class MyApp extends StatelessWidget{
//   _incrementCounter(){
//     print('sddsdsdsadwda');
//   }
//   Widget build (BuildContext context){
//     return MaterialApp(
//       title: 'ListView Component',
//       home: Scaffold(
//         appBar: new AppBar(
//           title: new Text('ListView Widget'),
//         ),
//         body: new ListView(
//           children: <Widget>[
//             new Image.network(
//               'http://jspang.com/static/upload/20181111/G-wj-ZQuocWlYOHM6MT2Hbh5.jpg'
//             ),
//              new Image.network(
//               'http://jspang.com/static/upload/20181109/1bHNoNGpZjyriCNcvqdKo3s6.jpg'
//             ),
//              new Image.network(
//               'http://jspang.com/static/myimg/typescript_banner.jpg'
//             ),
//              new Image.network(
//               'http://jspang.com/static/myimg/smile-vue.jpg'
//             ),
//             new FloatingActionButton(
//            onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: new Text('Hello'),
//       ), 
//           ],
//         )
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget
{
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Image Widget',
      home: Scaffold(
        body: Center(
          child: Container(
            child: new Image.network(
              'http://blogimages.jspang.com/blogtouxiang1.jpg',
          // fit: BoxFit.contain,
          scale: 1.0,
          color: Colors.lightBlue,
          colorBlendMode: BlendMode.darken,
          repeat: ImageRepeat.repeat,
            ),
            width: 500.0,
            height: 500.0,
            color: Colors.lightBlue,
        ),

        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget{ // container 组件
// Widget build(BuildContext context){
//   return MaterialApp(
//     title: 'Container Widget 01',
//     home: Scaffold(
//       body: Center(
//         child: Container(
//           child: new Text('Container Widget 01==Container Widget 01==Container Widget 01==Container Widget 01',style: TextStyle(fontSize: 25),),
//           alignment: Alignment.topLeft,
//           width: 400.0,
//           height: 500.0,
//           // color: Colors.lightGreen,
//           padding: const EdgeInsets.fromLTRB(15,10,15,10),
//           margin: const EdgeInsets.all(15),
//           decoration: new BoxDecoration(
//             gradient: const LinearGradient(
//               colors: [Colors.lightBlue,Colors.blue,Colors.lightGreen,Colors.purple]
//             ),
//             border: Border.all(width: 2.0,color: Colors.red)
//           ),
//         ),
//       ),
//     ),
//   );
// }
// }

// class MyApp extends StatelessWidget{ // Text 组件
//   @override
//   Widget build(BuildContext contect){
//     return MaterialApp(
//       title: 'Text widget',
//       home: Scaffold(
//         body: Center(child: Text(
//           'Hello Smile,窥探flutter窥探flutter窥探flutter窥探flutter窥探flutter窥探flutter',
//           textAlign: TextAlign.left,
//           overflow: TextOverflow.ellipsis, // fade 渐变
//           maxLines: 1, 
//           style: TextStyle(
//             fontSize: 25.0,
//             color: Color.fromARGB(255, 255, 150, 150),
//             decoration: TextDecoration.underline, // 下划线
//             decorationStyle: TextDecorationStyle.solid, //git实线
//           ),
//           )
//           ),
//       ),
//     );
//   }
// }