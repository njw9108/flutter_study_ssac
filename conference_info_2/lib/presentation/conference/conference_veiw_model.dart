import 'package:conference_info_2/domain/model/conference_info.dart';
import 'package:conference_info_2/domain/use_case/get_conference_info_use_case.dart';
import 'package:flutter/material.dart';

class ConferenceViewModel with ChangeNotifier {
  final GetConferenceInfoUseCase getConferenceInfo;
  List<ConferenceInfo> conferenceInfo = [];

  ConferenceViewModel({
    required this.getConferenceInfo,
  }) {
    fetchInfo();
  }

  Future<void> fetchInfo() async {
    final result = await getConferenceInfo();
    result.when(success: (info) {
      conferenceInfo = info;
    }, error: (message) {
      print(message);
    });
    notifyListeners();
  }
}
