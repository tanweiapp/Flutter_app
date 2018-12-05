import 'package:flutter/material.dart';
import '../Util/dataUtils.dart';
import '../model/indexCell.dart';
import '../Widgets/IndexListCell.dart';

class IndexPage extends StatefulWidget{
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage>{
   List<IndexCell> _listData = new List();

getList(bool isLoadMore){
    DataUtils.getIndexListData().then((resultList){
                setState(() {
                       _listData = resultList;           
                   });
              });
  }

  @override
  void initState(){
    super.initState();
    getList(false);
  }

  
   @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Text('IndexPage'),
        IndexListCell(cellInfo: _listData.length>0?_listData[0]:new Map())
      ],
    );
  }
}