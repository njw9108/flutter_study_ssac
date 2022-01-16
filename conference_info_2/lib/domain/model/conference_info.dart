import 'package:freezed_annotation/freezed_annotation.dart';
part 'conference_info.freezed.dart';
part 'conference_info.g.dart';
@freezed
class ConferenceInfo with _$ConferenceInfo {
  factory ConferenceInfo({
    required String name,
    required String link,
    required String start,
    required String end,
    required String location,
  }) = _ConferenceInfo;
  
  factory ConferenceInfo.fromJson(Map<String, dynamic> json) => _$ConferenceInfoFromJson(json);
}