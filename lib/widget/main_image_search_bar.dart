import 'package:flutter/material.dart';

class MainImageSearchBar extends StatelessWidget {
  const MainImageSearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Image.network(
            'https://mblogthumb-phinf.pstatic.net/MjAxODA5MTlfMjgw/MDAxNTM3MzQ3OTAxNTgy.zR66_ZxqY54TB2UmoR5gRDcv0fQdGNa8Ash2r7FeSC8g.FQJlciNJTTmx8bx2fLzaVbz5YoY9KJk4mW8XLtqCWJAg.PNG.naver_diary/%EB%B8%94%EB%A1%9C%EA%B7%B8%EB%A1%9C%EA%B3%A0.png?type=w800',
          ),
          Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                  top: 24.0,
                  bottom: 8.0,
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      new BorderSide(color: Colors.deepOrange),
                      borderRadius: new BorderRadius.circular(32),
                    ),
                  ),
                  cursorColor: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
