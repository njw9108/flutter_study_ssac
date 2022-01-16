import 'package:conference_info_2/domain/use_case/get_conference_info_use_case.dart';
import 'package:conference_info_2/presentation/conference/conference_state.dart';
import 'package:flutter/material.dart';

class ConferenceViewModel with ChangeNotifier {
  final GetConferenceInfoUseCase getConferenceInfo;

  ConferenceViewModel({
    required this.getConferenceInfo,
  }) {
    fetchInfo();
  }

  ConferenceState _state = ConferenceState();

  ConferenceState get state => _state;

  Future<void> fetchInfo() async {
    final result = await getConferenceInfo();
    result.when(success: (info) {
      _state = state.copyWith(
        conferenceInfo: info,
      );
    }, error: (message) {
      print(message);
    });
    notifyListeners();
  }
}
