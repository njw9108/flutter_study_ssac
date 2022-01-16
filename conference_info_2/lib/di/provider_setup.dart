import 'package:conference_info_2/data/data_source/http_conference_data_source.dart';
import 'package:conference_info_2/data/repository/conference_repository_impl.dart';
import 'package:conference_info_2/domain/use_case/get_conference_info_use_case.dart';
import 'package:conference_info_2/presentation/conference/conference_veiw_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> getProviders()  {
  final _dataSource = HttpConferenceDataSource();
  final repository = ConferenceRepositoryImpl(_dataSource);
  List<SingleChildWidget> viewModels = [
    ChangeNotifierProvider<ConferenceViewModel>(
      create: (context) => ConferenceViewModel(
        getConferenceInfo: GetConferenceInfoUseCase(
          repository,
        ),
      ),
    )
  ];

  return viewModels;
}
