import 'package:video_sample/core/result.dart';
import 'package:video_sample/domain/model/movie.dart';
import 'package:video_sample/domain/repository/movie_repository.dart';

class GetMoviesUseCase {
  final MovieRepository repository;

  GetMoviesUseCase(this.repository);

  Future<Result<List<Movie>>> call() async {
    return repository.getMovies();
  }
}