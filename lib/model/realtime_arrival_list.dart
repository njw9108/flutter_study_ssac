import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'realtime_arrival_list.freezed.dart';
part 'realtime_arrival_list.g.dart';

@freezed
class RealtimeArrivalList with _$RealtimeArrivalList {
  factory RealtimeArrivalList({
    required String arvlMsg3,
    required String arvlMsg2,
    required String trainLineNm,
  }) = _RealtimeArrivalList;

  factory RealtimeArrivalList.fromJson(Map<String, dynamic> json) =>
      _$RealtimeArrivalListFromJson(json);
}
