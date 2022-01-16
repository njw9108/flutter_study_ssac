import 'package:conference_info_2/core/result.dart';
import 'package:conference_info_2/data/data_source/http_conference_data_source.dart';
import 'package:conference_info_2/domain/model/conference_info.dart';
import 'package:conference_info_2/domain/repository/conference_info_repository.dart';

class ConferenceRepositoryImpl extends ConferenceInfoRepository {
  final HttpConferenceDataSource _dataSource;

  ConferenceRepositoryImpl(this._dataSource);

  @override
  Future<Result<List<ConferenceInfo>>> getConferenceInfo() async {
    return _dataSource.getConferenceInfo();
  }
}
