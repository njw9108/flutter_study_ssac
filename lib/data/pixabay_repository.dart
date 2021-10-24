abstract class PixabayRepository<T> {
  Future<T> fetch(String search);
}
