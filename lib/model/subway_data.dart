import 'package:subway_info_app/model/realtime_arrival_list.dart';

import 'error_message.dart';

class SubwayData {
  SubwayData({
      this.errorMessage, 
      this.realtimeArrivalList,});

  SubwayData.fromJson(dynamic json) {
    errorMessage = json['errorMessage'] != null ? ErrorMessage.fromJson(json['errorMessage']) : null;
    if (json['realtimeArrivalList'] != null) {
      realtimeArrivalList = [];
      json['realtimeArrivalList'].forEach((v) {
        realtimeArrivalList?.add(RealtimeArrivalList.fromJson(v));
      });
    }
  }
  ErrorMessage? errorMessage;
    List<RealtimeArrivalList>? realtimeArrivalList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (errorMessage != null) {
      map['errorMessage'] = errorMessage?.toJson();
    }
    if (realtimeArrivalList != null) {
      map['realtimeArrivalList'] = realtimeArrivalList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}