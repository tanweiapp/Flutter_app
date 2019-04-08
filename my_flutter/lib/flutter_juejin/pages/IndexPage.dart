import 'package:flutter/material.dart';
import '../Util/dataUtils.dart';
import '../model/indexCell.dart';
import '../Widgets/IndexListCell.dart';
import '../Widgets/IndexListHeader.dart';

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

  _renderList(context,index){
    if(index == 0){
      return IndexListHeader(false);
    }
    return IndexListCell(cellInfo: _listData[index-1]);
  }
   @override
  Widget build(BuildContext context){
    print(_listData.length);
    if(_listData.length == 0){
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return ListView.builder(
      itemCount: _listData.length,
      itemBuilder: (context,index) => _renderList(context, index),
    );
  }
}