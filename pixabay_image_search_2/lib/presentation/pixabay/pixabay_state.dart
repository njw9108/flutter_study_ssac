import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixabay_image_search_2/domain/model/pixabay_data.dart';

part 'pixabay_state.freezed.dart';

part 'pixabay_state.g.dart';

@freezed
class PixabayState with _$PixabayState {
  factory PixabayState({
    PixabayData? pixabayData,
    @Default(true) bool isLoading,
  }) = _PixabayState;

  factory PixabayState.fromJson(Map<String, dynamic> json) =>
      _$PixabayStateFromJson(json);
}
