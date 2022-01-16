import 'package:freezed_annotation/freezed_annotation.dart';

part 'hits.freezed.dart';
part 'hits.g.dart';

@freezed
class Hits with _$Hits {
  factory Hits({
    required String pageUrl,
    required String previewUrl,
  }) = _Hits;

  factory Hits.fromJson(Map<String, dynamic> json) => _$HitsFromJson(json);
}
