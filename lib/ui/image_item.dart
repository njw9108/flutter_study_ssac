import 'package:flutter/material.dart';
import 'package:image_search/model/pixabay_hits.dart';

class ImageItem extends StatelessWidget {
  final PixabayHits hits;

  ImageItem(this.hits);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 160,
            width: 250,
            child: Image.network(
              hits.webformatURL,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            hits.tags,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
      ],
    );
  }
}
