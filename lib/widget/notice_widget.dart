import 'package:flutter/material.dart';

class NoticeWidget extends StatelessWidget {
  const NoticeWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      height: 80,
      child: Row(
        children: [
          Expanded(
            child: SizedBox(),
          ),
          Row(
            children: [
              Image.network(
                'https://mblogthumb-phinf.pstatic.net/MjAxOTA3MDVfMjM4/MDAxNTYyMzI5MjM5ODg0.UxStoqQqA9BJDiqha4L10infDii7J-rulEdiwdenCbIg.02I4mb5TrUXONaULodqvcILXsasRK9JWPg9Fz7RwGXog.PNG.bigseo/image.png?type=w800',
                height: 70,
              ),
              Text(
                '내 주변 ',
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                '국민지원금 사용처',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Text(
                '를 바로 확인하세요.',
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
