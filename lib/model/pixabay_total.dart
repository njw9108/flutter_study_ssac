import 'package:image_search/model/pixabay_picture.dart';

class PixabayTotal {
  int total;
  int totalHits;
  List<PixabayPicture> hits;

  PixabayTotal({this.total, this.totalHits, this.hits});

  factory PixabayTotal.fromJson(Map<String, dynamic> json) {
    var list = json['hits'] as List;
    print(list.runtimeType);
    List<PixabayPicture> pictures =
        list.map((i) => PixabayPicture.fromJson(i)).toList();

    return PixabayTotal(
      total: json['total'],
      totalHits: json['totalHits'],
      hits: pictures,
    );
  }
}
