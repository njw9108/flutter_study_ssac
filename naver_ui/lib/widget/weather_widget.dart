import 'package:flutter/material.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 8,
            ),
            child: Image.network(
              'https://media.istockphoto.com/vectors/cute-yellow-sun-icon-vector-id1153644295',
              height: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Text(
              '25° 맑음',
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          Text(
            '어제보다 1° 높아요',
          ),
        ],
      ),
    );
  }
}

