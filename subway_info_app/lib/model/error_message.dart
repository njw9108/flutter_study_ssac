import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_message.freezed.dart';
part 'error_message.g.dart';

@freezed
class ErrorMessage with _$ErrorMessage {
  factory ErrorMessage({
    required int status,
    required String code,
    required String message,
    required String link,
    required String developerMessage,
    required int total,
  }) = _ErrorMessage;

  factory ErrorMessage.fromJson(Map<String, dynamic> json) =>
      _$ErrorMessageFromJson(json);
}
