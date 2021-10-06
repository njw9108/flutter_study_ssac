import 'package:flutter/material.dart';
import 'package:image_search/model/pixabay_hits.dart';

class ImageItem extends StatelessWidget {
  final PixabayHits hits;
  //final PixabayData hits;

  ImageItem(this.hits);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 160,
            child: Image.network(
              hits.previewURL,
              fit: BoxFit.fill,
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
