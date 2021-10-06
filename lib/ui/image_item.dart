import 'package:flutter/material.dart';
import 'package:image_search/model/pixabay_hits.dart';

class ImageItem extends StatelessWidget {
  final PixabayHits picture;

  ImageItem(this.picture);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 160,
            child: Image.network(
              picture.previewURL,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            picture.tags,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
      ],
    );
  }
}
