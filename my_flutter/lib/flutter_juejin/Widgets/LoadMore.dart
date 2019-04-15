import 'package:flutter/material.dart';
class LoadMore extends StatelessWidget {
  final bool hasMore;
  LoadMore(this.hasMore);
  // @override
  Widget build(BuildContext context) {
    if(hasMore){
      return Container(
        height: 70,
        child: Center(
          child: Opacity(
            opacity: 1.0,
            child: CircularProgressIndicator(
              strokeWidth: 3.0,
            ),
          ),
          
        ),
      );
    }
    return Container(
      height: 70,
      child: Center(
        child: Text('我是有底线的',
               style: TextStyle(color: Theme.of(context).accentColor)),
      ),
    );
  }
}