import 'package:flutter/material.dart';
import 'DoubanTheatersWidget.dart';
<<<<<<< HEAD
import 'ImageList.dart';
import 'HorizontalList.dart';

void main() {
  // runApp(DoubanTheatersWidget());
  // runApp(ImageList());
   runApp(HorizontalList());
=======
import 'DetailPage.dart';
import 'StudyFirst.dart';
import './flutter_juejin/MyApp.dart';
import './DynamicListView.dart';
import './RowComponent.dart';
import './ColumnComponent.dart';
import './StackComponent.dart';

// void main() {
//   runApp(DoubanTheatersWidget()); //  豆瓣入口
// }
void main(){
  runApp(StackComponent());
>>>>>>> Dev
}

// void main() {
//   runApp(
//     new MaterialApp( // 加载本地图片的入口
//       title:'My App',
//       home:new DetailPage()
//     )
//   );
// }
// void main() => runApp(MyApp());// 掘金入口

<<<<<<< HEAD
=======
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

>>>>>>> Dev
// class MyApp extends StatelessWidget
// {
//  Widget build (BuildContext context){
//    return MaterialApp(
//      title: 'Image COmponent',
//      home: Scaffold(
//        body: Center(
//          child: Container(
//            child: new Image.network(
//              'http://jspang.com/static/myimg/blogtouxiang.jpg',
//             //  repeat: ImageRepeat.repeat,
//              color: Colors.greenAccent,
//              colorBlendMode: BlendMode.darken,
//             //  scale: 1.0,
//             //  fit: BoxFit.fitWidth,
           
//            ),
//            width: 500.0,
//            height: 500.0,
//            color: Colors.lightBlue,
          
//          ),
//        ),
//      ),
//    );
//  }
// }

// class MyApp extends StatelessWidget{
  
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'Text widget',
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             child: new Text('sdsdsdsdsddwdadawdsad',style: TextStyle(fontSize: 30),),
//             alignment: Alignment.topLeft,
//             // color: Colors.lightBlue,
//             width: 500,
//             height: 400,
//             padding: const EdgeInsets.fromLTRB(10, 100, 50, 50),
//             margin: const EdgeInsets.all(15),
//             decoration: new BoxDecoration(
//               gradient: const LinearGradient(
//                 colors: [Colors.lightBlue,Colors.greenAccent,Colors.purple]
//               ),
//               border: Border.all(width: 2.0,color: Colors.red)
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext contect){
//     return MaterialApp(
//       title: 'Text widget',
//       home: Scaffold(
//         body: Center(child: Text(
//           'Hello Smile,窥探flutter窥探flutter窥探flutter窥探flutter窥探flutter窥探flutter',
//           textAlign: TextAlign.left,
//           overflow: TextOverflow.ellipsis,
//           maxLines: 10,
//           style: TextStyle(
//             fontSize: 25,
//             color: Color.fromARGB(255, 255, 150, 150),
//             decoration: TextDecoration.underline,
//             decorationStyle: TextDecorationStyle.solid,
//           ),
//           )
//           ),
//       ),
//     );
//   }
// }