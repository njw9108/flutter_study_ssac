import 'package:pixabay_image_search_2/data/data_source/pixabay_data_source.dart';
import 'package:pixabay_image_search_2/data/repository/pixabayRepositoryImpl.dart';
import 'package:pixabay_image_search_2/domain/use_case/getPixabayDataUseCase.dart';
import 'package:pixabay_image_search_2/presentation/pixabay/pixabay_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> getProviders() {
  final _dataSource = PixbayDataSource();
  final repository = PixabayRepositoryImpl(_dataSource);
  List<SingleChildWidget> viewModels = [
    ChangeNotifierProvider<PixabayViewModel>(
      create: (context) => PixabayViewModel(
        GetPixabayDataUseCase(repository),
      ),
    )
  ];

  return viewModels;
}
