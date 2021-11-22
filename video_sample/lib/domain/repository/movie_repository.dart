import 'package:video_sample/core/result.dart';
import 'package:video_sample/domain/model/movie.dart';

abstract class MovieRepository {
  Future<Result<List<Movie>>> getMovies();
}