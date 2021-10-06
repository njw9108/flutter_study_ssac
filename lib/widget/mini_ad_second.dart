import 'package:flutter/material.dart';

class MiniADSecond extends StatelessWidget {
  const MiniADSecond({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        //borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'NO.1 농구 게임의 화려한 귀환!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '플덩2 사전예약으로 모두들 묶어',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 32.0),
            child: Image.network(
              'https://i.pinimg.com/originals/1a/b7/fe/1ab7fe4abf8b917e7987dd47164db5c6.jpg',
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}

