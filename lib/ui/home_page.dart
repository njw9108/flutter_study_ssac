import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:json_post_coment/model/commnet.dart';
import 'dart:convert';

import 'package:json_post_coment/model/post.dart';
import 'package:json_post_coment/ui/data_card.dart';
import 'package:json_post_coment/ui/post_detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post> _list = [];

  @override
  void initState() {
    super.initState();
    Init();
  }

  Future<void> Init() async {
    List<Post> posts = await fetchList();
    setState(() {
      _list = posts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Data'),
      ),
      body: ListView(
        children: [
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              ..._list.map((e) {
                return InkWell (
                  onTap: () async {
                    List<Comment> comments = await fetchComments();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PostDetail(e.userId,e.id,e.title,e.body,comments)),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DataCard(e.userId, e.id, e.title),
                  ),
                );
              }).toList(),
            ],
          ),
        ],
      ),
    );
  }

  Future<List<Post>> fetchList() async {
    final response =
    await http.get('https://jsonplaceholder.typicode.com/posts');

    Iterable jsonResponse = jsonDecode(response.body);
    List<Post> posts = jsonResponse.map((e) => Post.fromJson(e)).toList();

    return posts;
  }

  Future<List<Comment>> fetchComments() async {
    final response =
    await http.get('https://jsonplaceholder.typicode.com/comments');

    Iterable jsonResponse = jsonDecode(response.body);
    List<Comment> comments = jsonResponse.map((e) => Comment.fromJson(e)).toList();

    return comments;
  }
}
