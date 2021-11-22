import 'package:flutter/material.dart';
import 'package:video_sample/domain/model/movie.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;
  final Function(Movie)? callBack;

  const MovieItem({
    Key? key,
    required this.movie,
    this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(movie.title),
      onTap: callBack?.call(movie),
    );
  }
}
