import 'package:json_annotation/json_annotation.dart';

part 'error_message.g.dart';

@JsonSerializable()
class ErrorMessage {
  int status;
  String code;
  String message;
  String link;
  String developerMessage;
  int total;

  ErrorMessage(this.status, this.code, this.message, this.link,
      this.developerMessage, this.total);

  factory ErrorMessage.fromJson(Map<String, dynamic> json) =>
      _$ErrorMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorMessageToJson(this);
}
