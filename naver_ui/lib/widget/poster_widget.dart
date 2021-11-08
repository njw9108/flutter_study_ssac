import 'package:flutter/material.dart';

class PosterWidget extends StatelessWidget {
  final String title;
  final String imageUrl;

  const PosterWidget({Key key,
    this.title,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(imageUrl,width: 100,),
          Text(title),
        ],
      ),
    );
  }
}
