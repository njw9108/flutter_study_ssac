import 'package:flutter/material.dart';
import 'package:naver_ui/naver_main_page.dart';
import 'package:naver_ui/news_page.dart';
import 'package:naver_ui/shopping_page.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 1;
  final _pages = [
    ShoppingPage2(),
    NaverMainPage(),
    NewsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: '쇼핑 라이프'),
          BottomNavigationBarItem(icon: Icon(Icons.circle_rounded),label: 'Main'),
          BottomNavigationBarItem(icon: Icon(Icons.article),label: '뉴스, 콘텐츠'),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index){
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
