import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:subway_info_app/model/error_message.dart';
import 'package:subway_info_app/model/realtime_arrival_list.dart';

part 'subway_data.freezed.dart';
part 'subway_data.g.dart';

@freezed
class SubwayData with _$SubwayData {
  factory SubwayData({
    required ErrorMessage? errorMessage,
    required List<RealtimeArrivalList>? realtimeArrivalList,
  }) = _SubwayData;

  factory SubwayData.fromJson(Map<String, dynamic> json) =>
      _$SubwayDataFromJson(json);
}