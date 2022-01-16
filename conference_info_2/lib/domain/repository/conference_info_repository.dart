import 'package:conference_info_2/core/result.dart';
import 'package:conference_info_2/domain/model/conference_info.dart';

abstract class ConferenceInfoRepository {
  Future<Result<ConferenceInfo>> getConferenceInfo();
}