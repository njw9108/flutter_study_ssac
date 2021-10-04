import 'package:flutter/material.dart';
import 'package:json_post_coment/model/post.dart';

class DataCard extends StatelessWidget {
  final Post post;

  DataCard({@required this.post});

  @override
  Widget build(BuildContext context) {
    int id = post.id;
    int userId = post.userId;
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.lightBlueAccent,
      constraints: BoxConstraints.tightForFinite(),
      child: Column(
        children: [
          Column(
            children: [
              WriteBold('Title',22),
              WriteNormal(post.title,21),
            ],
          ),
          Row(
            children: [
              WriteBold('User ID',19),
              WriteNormal('$userId',19),
            ],
          ),
          Row(
            children: [
              WriteBold('ID',19),
              WriteNormal('$id',19),
            ],
          ),
        ],
      ),
    );
  }
}

class WriteNormal extends StatelessWidget {
  final String _text;
  final double _size;

  WriteNormal(this._text,this._size);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        _text,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        maxLines: 2,
        softWrap: false,
        style: TextStyle(fontSize: _size),
      ),
    );
  }
}

class WriteBold extends StatelessWidget {
  final String _text;
  final double _size;

  WriteBold(this._text,this._size);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
          _text,
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: _size),
      ),
    );
  }
}
