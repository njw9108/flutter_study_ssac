import 'package:flutter/material.dart';

class MiniADUnderSearchBar extends StatelessWidget {
  const MiniADUnderSearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(),
          ),
          Column(
            children: [
              Text(
                '추석 연휴에도 함께하는 커튼콜',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 11,
                ),
                textAlign: TextAlign.right,
              ),
              Row(
                children: [
                  Text(
                    '뮤지컬계의 아이돌',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    '유준상',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, top: 0.0, right: 56.0, bottom: 0.0),
            child: Image.network(
              'https://spnimage.edaily.co.kr/images/Photo/files/NP/S/2021/01/PS21013100009.jpg',
              width: 40,
              height: 70,
            ),
          ),
        ],
      ),
    );
  }
}
