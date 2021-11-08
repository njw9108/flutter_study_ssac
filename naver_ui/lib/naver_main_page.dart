import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:naver_ui/widget/empty_space.dart';
import 'package:naver_ui/widget/main_image_search_bar.dart';
import 'package:naver_ui/widget/mini_ad_second.dart';
import 'package:naver_ui/widget/mini_ad_under_search_bar.dart';
import 'package:naver_ui/widget/notice_widget.dart';
import 'package:naver_ui/widget/now_album_widget.dart';
import 'package:naver_ui/widget/weather_widget.dart';

class NaverMainPage extends StatelessWidget {
  NaverMainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = PageController(initialPage: 0);

    return Scaffold(
      body: ListView(
        children: [
          //메인 이미지, 검색창
          MainImageSearchBar(),
          //검색창 밑 미니광고
          MiniADUnderSearchBar(),
          //빈공간
          EmptySpace(),
          //2번째 광고
          MiniADSecond(),
          //날씨
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16,
            ),
            child: WeatherWidget(),
          ),
          //'NOW' 앨범
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NowAlbumWidget(),
          ),
          //공지(재난 지원금)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NoticeWidget(),
          )
        ],
      ),
    );
  }
}


