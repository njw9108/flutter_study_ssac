import 'package:conference_info_2/core/result.dart';
import 'package:conference_info_2/domain/model/conference_info.dart';
import 'package:conference_info_2/domain/repository/conference_info_repository.dart';

class GetConferenceInfoUseCase {
  final ConferenceInfoRepository repository;

  GetConferenceInfoUseCase(this.repository);

  Future<Result<List<ConferenceInfo>>> call() async {
    final result = await repository.getConferenceInfo();

    return result.when(success: (data) {
      return Result.success(data);
    }, error: (message) {
      return Result.error(message);
    });
  }
}
