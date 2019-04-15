import 'dart:convert';
import '../model/indexCell.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async' show Future;
import './NetWorkUtils.dart';
import '../api/Api.dart';

class DataUtils{
  static Future<String> _loadIndexListAsset() async{
    return await rootBundle.loadString('assets/indexListData.json');
  }

  static Future<List<IndexCell>>getIndexListData(Map<String,dynamic>params) async{

 var response = await NetWorkUtils.get(Api.RANK_LIST, parmas: params);
    var responseList = response['d']['entrylist'];

    List<IndexCell> resultList = new List();
    for(int i = 0; i < responseList.length; i++){
      try {
        IndexCell cellData = new IndexCell.fromJson(responseList[i]);
        resultList.add(cellData);
      } catch (e) {
        print('Something really unknown: $i');
      } 
    }
    // String jsonString = await _loadIndexListAsset();
    // print('本地的json数据' + jsonString);
    // final jsonResponseList = json.decode(jsonString)['indexListData'];
    // for(int i=0;i<jsonResponseList.length;i++){
    //   IndexCell cellData = new IndexCell.fromJson(jsonResponseList[i]);
    //   resultList.add(cellData);
    // }
    return resultList;
  }

}