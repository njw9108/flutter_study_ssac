import 'package:flutter/material.dart';
import 'package:image_search/api.dart' as api;
import 'package:image_search/model/pixabay_total.dart';
import 'package:image_search/ui/image_item.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController inputController = TextEditingController();

  String url = api.MakeApiUrl('iphone');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'API test',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: inputController,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      url = api.MakeApiUrl(inputController.text);
                    });
                  },
                  child: Text(
                    '검색',
                    style: TextStyle(fontSize: 22, color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
          FutureBuilder<PixabayTotal>(
            future: api.fetch(url),
            //initialData: ,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Text('에러가 발생했습니다');
              }
              if (!snapshot.hasData) {
                return Text('데이터가 없습니다');
              }
              PixabayTotal total = snapshot.data;
              return ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: total.hits.map((e) => ImageItem(e)).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
