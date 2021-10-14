class RealtimeArrivalList {
  RealtimeArrivalList({
      required this.beginRow,
      required this.endRow,
      required this.curPage,
      required this.pageRow,
      required this.totalCount,
      required this.rowNum,
      required this.selectedCount,
      required this.subwayId,
      required this.subwayNm,
      required this.updnLine,
      required this.trainLineNm,
      required this.subwayHeading,
      required this.statnFid,
      required this.statnTid,
      required this.statnId,
      required this.statnNm,
      required this.trainCo,
      required this.ordkey,
      required this.subwayList,
      required this.statnList,
      required this.btrainSttus,
      required this.barvlDt,
      required this.btrainNo,
      required this.bstatnId,
      required this.bstatnNm,
      required this.recptnDt,
      required this.arvlMsg2,
      required this.arvlMsg3,
      required this.arvlCd,});

  RealtimeArrivalList.fromJson(dynamic json) {
    beginRow = json['beginRow'];
    endRow = json['endRow'];
    curPage = json['curPage'];
    pageRow = json['pageRow'];
    totalCount = json['totalCount'];
    rowNum = json['rowNum'];
    selectedCount = json['selectedCount'];
    subwayId = json['subwayId'];
    subwayNm = json['subwayNm'];
    updnLine = json['updnLine'];
    trainLineNm = json['trainLineNm'];
    subwayHeading = json['subwayHeading'];
    statnFid = json['statnFid'];
    statnTid = json['statnTid'];
    statnId = json['statnId'];
    statnNm = json['statnNm'];
    trainCo = json['trainCo'];
    ordkey = json['ordkey'];
    subwayList = json['subwayList'];
    statnList = json['statnList'];
    btrainSttus = json['btrainSttus'];
    barvlDt = json['barvlDt'];
    btrainNo = json['btrainNo'];
    bstatnId = json['bstatnId'];
    bstatnNm = json['bstatnNm'];
    recptnDt = json['recptnDt'];
    arvlMsg2 = json['arvlMsg2'];
    arvlMsg3 = json['arvlMsg3'];
    arvlCd = json['arvlCd'];
  }
  dynamic beginRow;
  dynamic endRow;
  dynamic curPage;
  dynamic pageRow;
  late int totalCount;
  late int rowNum;
  late int selectedCount;
  late String subwayId;
  dynamic subwayNm;
  late String updnLine;
  late String trainLineNm;
  late String subwayHeading;
  late String statnFid;
  late String statnTid;
  late String statnId;
  late String statnNm;
  dynamic trainCo;
  late String ordkey;
  late String subwayList;
  late String statnList;
  dynamic btrainSttus;
  late String barvlDt;
  late String btrainNo;
  late String bstatnId;
  late String bstatnNm;
  late String recptnDt;
  late String arvlMsg2;
  late String arvlMsg3;
  late String arvlCd;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['beginRow'] = beginRow;
    map['endRow'] = endRow;
    map['curPage'] = curPage;
    map['pageRow'] = pageRow;
    map['totalCount'] = totalCount;
    map['rowNum'] = rowNum;
    map['selectedCount'] = selectedCount;
    map['subwayId'] = subwayId;
    map['subwayNm'] = subwayNm;
    map['updnLine'] = updnLine;
    map['trainLineNm'] = trainLineNm;
    map['subwayHeading'] = subwayHeading;
    map['statnFid'] = statnFid;
    map['statnTid'] = statnTid;
    map['statnId'] = statnId;
    map['statnNm'] = statnNm;
    map['trainCo'] = trainCo;
    map['ordkey'] = ordkey;
    map['subwayList'] = subwayList;
    map['statnList'] = statnList;
    map['btrainSttus'] = btrainSttus;
    map['barvlDt'] = barvlDt;
    map['btrainNo'] = btrainNo;
    map['bstatnId'] = bstatnId;
    map['bstatnNm'] = bstatnNm;
    map['recptnDt'] = recptnDt;
    map['arvlMsg2'] = arvlMsg2;
    map['arvlMsg3'] = arvlMsg3;
    map['arvlCd'] = arvlCd;
    return map;
  }

}