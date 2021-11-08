import 'package:image_search/model/pixabay_hits.dart';

class PixabayData {
  late int total;
  late int totalHits;
  late List<PixabayHits> hits;

  PixabayData({
    required this.total,
    required this.totalHits,
    required this.hits,
  });

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
