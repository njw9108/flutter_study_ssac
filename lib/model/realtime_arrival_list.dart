import 'package:json_annotation/json_annotation.dart';

part 'realtime_arrival_list.g.dart';

@JsonSerializable()
class RealtimeArrivalList {
  String arvlMsg3;
  String arvlMsg2;
  String trainLineNm;

  RealtimeArrivalList(this.arvlMsg3, this.arvlMsg2, this.trainLineNm);

  factory RealtimeArrivalList.fromJson(Map<String, dynamic> json) =>
      _$RealtimeArrivalListFromJson(json);

  Map<String, dynamic> toJson() => _$RealtimeArrivalListToJson(this);
}
