import 'package:subway_info_app/model/realtime_arrival_list.dart';

import 'error_message.dart';

import 'package:json_annotation/json_annotation.dart';

part 'subway_data.g.dart';

@JsonSerializable()
class SubwayData {
  ErrorMessage? errorMessage;
  List<RealtimeArrivalList>? realtimeArrivalList;

  SubwayData(this.errorMessage, this.realtimeArrivalList);

  factory SubwayData.fromJson(Map<String, dynamic> json) =>
      _$SubwayDataFromJson(json);

  Map<String, dynamic> toJson() => _$SubwayDataToJson(this);
}
