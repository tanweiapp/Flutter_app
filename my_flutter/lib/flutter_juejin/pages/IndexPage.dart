import 'package:flutter/material.dart';
import '../Util/dataUtils.dart';
import '../model/indexCell.dart';
import '../Widgets/IndexListCell.dart';
import '../Widgets/IndexListHeader.dart';
import '../constants/Constants.dart';

const pageIndexArray = Constants.RANK_BEFORE;

class IndexPage extends StatefulWidget {
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List<IndexCell> _listData = new List();
  int _pageIndex = 0;
  Map<String, dynamic> _params = {"src": 'web', "category": "all", "limit": 20};
  bool _isRequesting = false; //是否正在请求数据的flag
  bool _hasMore = true;
  ScrollController _scrollController = new ScrollController();
  bool _isLogin = false;

Future<void> _onRefresh() async{
  _listData.clear();
  setState(() {
    _listData = _listData;
    _hasMore = true;
  });
  getList(false);
  return null;
}
  getList(bool isLoadMore) {
    if(_isRequesting || !_hasMore) return;
    if (!isLoadMore) {
      //刷新时重置page
      _pageIndex = 0;
    }
    _params['before'] = pageIndexArray[_pageIndex];
    _isRequesting = true;
    DataUtils.getIndexListData(_params).then((result) {
      _pageIndex +=1;
      List<IndexCell> resultList = new List();
      if(isLoadMore){
        resultList.addAll(_listData);
      }
      resultList.addAll(result);
      setState(() {
        _listData = resultList;
        _hasMore = _pageIndex < pageIndexArray.length;
        _isRequesting = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getList(false);
    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        print('loadMore');
        getList(true);
      }
    });
  }

  _renderList(context, index) {
    if (index == 0) {
      return IndexListHeader(false);
    }
    return IndexListCell(cellInfo: _listData[index - 1]);
  }

  @override
  Widget build(BuildContext context) {
    print(_listData.length);
    if (_listData.length == 0) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: ListView.builder(
        itemCount: _listData.length + 2, //添加一个header 和 loadMore
        itemBuilder: (context,index) => _renderList(context, index),
        controller: _scrollController,
      ),
    );
    // return ListView.builder(
    //   itemCount: _listData.length,
    //   itemBuilder: (context, index) => _renderList(context, index),
    // );
  }
}
