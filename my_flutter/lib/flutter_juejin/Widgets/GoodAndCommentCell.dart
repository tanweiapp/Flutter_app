import 'package:flutter/material.dart';

class GoodAndCommentCell extends StatelessWidget{

  final int collectionCount;
  final int commentCount;

  GoodAndCommentCell(this.collectionCount,this.commentCount);

  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        Container(
          height: 20,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: new BoxDecoration(
            border: Border.all(color: Theme.of(context).accentColor,width: 1.0),
          ),
          child: Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(
                Icons.favorite,
                size: 12.5,
                color: Theme.of(context).accentColor,
                ),
              ),
              
                Text(
                  collectionCount == 0?'':collectionCount.toString(),
                  style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).accentColor,
                  ),
                )
            ],
          ),
          ),
          Container(
            height: 20,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide.none,
                top: BorderSide(color: Theme.of(context).accentColor,width: 1.0),
                right: BorderSide(color: Theme.of(context).accentColor,width: 1.0),
                bottom: BorderSide(color: Theme.of(context).accentColor,width: 1.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(right: 5),
                  child: Icon(
                  Icons.speaker_notes,
                  size: 12.5,
                  color: Theme.of(context).accentColor,
                )
                ),
                Text(
                  commentCount==0?'':commentCount.toString(),
                   style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).accentColor,
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}