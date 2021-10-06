import 'package:flutter/material.dart';
import 'package:image_search/model/pixabay_picture.dart';

class ImageItem extends StatelessWidget {
  final PixabayPicture picture;

  ImageItem(this.picture);

  @override
  Widget build(BuildContext context) {
    return Image.network(picture.previewURL);
  }
}
