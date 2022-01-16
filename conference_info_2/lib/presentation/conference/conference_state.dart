import 'package:conference_info_2/domain/model/conference_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conference_state.freezed.dart';

part 'conference_state.g.dart';

@freezed
class ConferenceState with _$ConferenceState {
  factory ConferenceState({
    @Default([]) List<ConferenceInfo> conferenceInfo,
    @Default(true) bool isLoading,
  }) = _ConferenceState;

  factory ConferenceState.fromJson(Map<String, dynamic> json) =>
      _$ConferenceStateFromJson(json);
}
