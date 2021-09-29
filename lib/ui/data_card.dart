import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  final int userId;
  final int id;
  final String title;

  DataCard(this.userId, this.id, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.lightBlueAccent,
      constraints: BoxConstraints.tightForFinite(),
      child: Column(
        children: [
          Column(
            children: [
              WriteBold('Title',22),
              WriteNormal(title,21),
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
