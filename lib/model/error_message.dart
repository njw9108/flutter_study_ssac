class ErrorMessage {
  ErrorMessage({
      required this.status,
      required this.code,
      required this.message,
      required this.link,
      required this.developerMessage,
      required this.total,});

  ErrorMessage.fromJson(dynamic json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    link = json['link'];
    developerMessage = json['developerMessage'];
    total = json['total'];
  }
  late int status;
  late String code;
  late String message;
  late String link;
  late String developerMessage;
  late int total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['code'] = code;
    map['message'] = message;
    map['link'] = link;
    map['developerMessage'] = developerMessage;
    map['total'] = total;
    return map;
  }

}