import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:json_post_coment/model/commnet.dart';
import 'package:json_post_coment/model/post.dart';

class PostDetail extends StatelessWidget {
  final Post post;
  final List<Comment> comments;

  PostDetail({
    required this.post,
    required this.comments,
  });

  List<Comment> findComment(int id) {
    return comments.where((element) => element.postId == id).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: ListView(
        children: [
          WriteBold('Title'),
          WriteNormal(text: post.title),
          WriteID(userId: post.userId, id: post.id),
          MakeLine(),
          WriteBold('body: '),
          WriteNormal(text: post.body),
          MakeLine(),
          WriteBold('comments:'),
          ...findComment(post.id).map(
            (e) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: CommentText(e),
            ),
          ).toList(),
        ],
      ),
    );
  }
}

class CommentText extends StatelessWidget {
  final Comment _comment;

  CommentText(this._comment);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.orange,
        ),
      ),
      constraints: BoxConstraints.tightForFinite(),
      child: Column(
        children: [
          Row(
            children: [
              WriteCommentBold('Name : '),
              WriteCommentNormal(_comment.name),
            ],
          ),
          Row(
            children: [
              WriteCommentBold('email : '),
              WriteCommentNormal(_comment.email),
            ],
          ),
          Row(
            children: [
              WriteCommentNormal('-> ' + _comment.body),
            ],
          ),
        ],
      ),
    );
  }
}

class WriteCommentNormal extends StatelessWidget {
  final String _text;

  WriteCommentNormal(this._text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        _text,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}

class WriteCommentBold extends StatelessWidget {
  final String _text;

  WriteCommentBold(this._text);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class MakeLine extends StatelessWidget {
  const MakeLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: Colors.black,
    );
  }
}

class WriteID extends StatelessWidget {
  const WriteID({
    Key? key,
    required int userId,
    required int id,
  })  : _userId = userId,
        _id = id,
        super(key: key);

  final int _userId;
  final int _id;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SizedBox()),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              WriteBold('User ID'),
              WriteNormal(text: '$_userId'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              WriteBold('ID'),
              WriteNormal(text: '$_id'),
            ],
          ),
        ),
      ],
    );
  }
}

class WriteNormal extends StatelessWidget {
  const WriteNormal({
    Key? key,
    required String text,
  })  : _text = text,
        super(key: key);

  final String _text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        _text,
        style: TextStyle(fontSize: 21),
      ),
    );
  }
}

class WriteBold extends StatelessWidget {
  final String _text;

  WriteBold(this._text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(_text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
    );
  }
}
