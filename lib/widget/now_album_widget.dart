import 'package:flutter/material.dart';
import 'package:naver_ui/widget/poster_widget.dart';

class NowAlbumWidget extends StatelessWidget {
  // 포스터 데이터
  final _adItems = [
    {
      'title': '트와이스 앨범',
      'imageUrl':
      'https://cdn.notefolio.net/img/ab/af/abaffaeaad1ead18992dc362bfab724ce51fb6f8d1b9c908987bbfbdab024025_v1.jpg',
    },
    {
      'title': 'BTS 앨범',
      'imageUrl':
      'https://cdn.topstarnews.net/news/photo/202105/3057219_619272_4232.png',
    },
    {
      'title': '트와이스 앨범',
      'imageUrl': 'https://fimg5.pann.com/new/download.jsp?FileID=55995268',
    },
    {
      'title': '트와이스 앨범',
      'imageUrl': 'https://t1.daumcdn.net/cfile/tistory/994B924D5BDF09BB0B',
    },
    {
      'title': '아이유 앨범',
      'imageUrl':
      'https://image.ajunews.com/content/image/2015/10/21/20151021101241776361.jpg',
    },
    {
      'title': 'BTS 앨범',
      'imageUrl':
      'https://cdn.notefolio.net/img/aa/e1/aae183047df09890a45000846d40ec1bc34894324fb4b7030cbe342fbbd024e2_v1.jpg',
    },
  ];

  NowAlbumWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      height: 260,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'NOW.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 20),
                ),
              ),
            ],
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: _adItems.map((e) {
                // 작성할 것 있으면 더 작성
                return PosterWidget(
                  title: e['title'],
                  imageUrl: e['imageUrl'],
                );
              }).toList(),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(),
              ),
              SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white38),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.black54),
                    shape: MaterialStateProperty.all<
                        RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(24),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    '나우 편성표',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white38),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.black54),
                    shape: MaterialStateProperty.all<
                        RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(24),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    '쇼핑 편성표',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}