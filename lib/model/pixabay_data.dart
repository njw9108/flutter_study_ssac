import 'package:image_search/model/pixabay_hits.dart';

class PixabayData {
  int total;
  int totalHits;
  List<PixabayHits> hits;

  PixabayData({this.total, this.totalHits, this.hits});

  factory PixabayData.fromJson(Map<String, dynamic> json) {
    var list = json['hits'] as List;
    List<PixabayHits> pictures =
        list.map((i) => PixabayHits.fromJson(i)).toList();

    return PixabayData(
      total: json['total'],
      totalHits: json['totalHits'],
      hits: pictures,
    );
  }
}
