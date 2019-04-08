import 'package:flutter/material.dart';
import '../model/indexCell.dart';
import './TextDot.dart';
import './GoodAndCommentCell.dart';
import '../routers/application.dart';
import 'dart:core';

class IndexListCell extends StatelessWidget{
  final IndexCell cellInfo;

//组建初始化构造方法
  IndexListCell({Key key,this.cellInfo}):super(key : key);

  TextStyle titleTextStyle = TextStyle(
    color: Color(0xFFB2BAC2),
    fontWeight: FontWeight.w300,
    fontSize: 13,
  );

// 渲染方法
  List<Widget>_buildFirstRow(){
    // 声明一个空数组
    List<Widget> _listRow = new List();
    if(cellInfo.hot){
      _listRow.add(Text(
        '热',
        style: TextStyle(
          color: Color(0xFFF53040),
          fontWeight: FontWeight.w600,
        ),
      ));
      _listRow.add(TextDot());
    }
    if(cellInfo.isCollection == 'post'){
      _listRow.add(Text(
        '专栏',
        style: TextStyle(
          color: Color(0xFFBC30DA),
          fontWeight: FontWeight.w600,
        ),
      ));
      _listRow.add(TextDot());
    }
    _listRow.add(Text(cellInfo.username,style: titleTextStyle));
    _listRow.add(TextDot());
    _listRow.add(Text(cellInfo.createdTime,style: titleTextStyle));
    _listRow.add(TextDot());
    _listRow.add(
      Expanded(
        child: new Text(
          cellInfo.tag,
          style:titleTextStyle,
          overflow:TextOverflow.ellipsis,
        ),
      )
    );
    return _listRow;
  }

  Widget build(BuildContext context){
    return InkWell(
      onTap: (){
        // Application.router.navigateTo(context, "/detail?id=${Uri.encodeComponent(cellInfo.detailUrl)}&title=${Uri.encodeComponent(cellInfo.title)}",transition: TransitionType.fadeIn);
        Application.router.navigateTo(context, "/detail?id=${Uri.encodeComponent(cellInfo.detailUrl)}&title=${Uri.encodeComponent(cellInfo.title)}");
      },
      child: Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 20,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _buildFirstRow(),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 9.0),
            child: Text(
              cellInfo.title,
              style:TextStyle(
                color:Color(0xFF393C3F),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          GoodAndCommentCell(cellInfo.collectionCount, cellInfo.commentCount),
          SizedBox(
            height: 25,
          ),
          Divider(
            height: 2.0,
            color: Colors.grey,
          )
        ],
      ),
    ),
    );
  }
}