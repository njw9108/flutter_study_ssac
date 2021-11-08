class PixabayHits {
  PixabayHits({
    required int id,
    required String pageURL,
    required String type,
    required String tags,
    required String previewURL,
    required int previewWidth,
    required int previewHeight,
    required String webformatURL,
    required int webformatWidth,
    required int webformatHeight,
    required String largeImageURL,
    required int imageWidth,
    required int imageHeight,
    required int imageSize,
    required int views,
    required int downloads,
    required int collections,
    required int likes,
    required int comments,
    required int userId,
    required String user,
    required String userImageURL,
  }) {
    _id = id;
    _pageURL = pageURL;
    _type = type;
    _tags = tags;
    _previewURL = previewURL;
    _previewWidth = previewWidth;
    _previewHeight = previewHeight;
    _webformatURL = webformatURL;
    _webformatWidth = webformatWidth;
    _webformatHeight = webformatHeight;
    _largeImageURL = largeImageURL;
    _imageWidth = imageWidth;
    _imageHeight = imageHeight;
    _imageSize = imageSize;
    _views = views;
    _downloads = downloads;
    _collections = collections;
    _likes = likes;
    _comments = comments;
    _userId = userId;
    _user = user;
    _userImageURL = userImageURL;
  }

  factory PixabayHits.fromJson(Map<String, dynamic> json) {
    return PixabayHits(
      id: json['id'],
      pageURL: json['pageURL'],
      type: json['type'],
      tags: json['tags'],
      previewURL: json['previewURL'],
      previewWidth: json['previewWidth'],
      previewHeight: json['previewHeight'],
      webformatURL: json['webformatURL'],
      webformatWidth: json['webformatWidth'],
      webformatHeight: json['webformatHeight'],
      largeImageURL: json['largeImageURL'],
      imageWidth: json['imageWidth'],
      imageHeight: json['imageHeight'],
      imageSize: json['imageSize'],
      views: json['views'],
      downloads: json['downloads'],
      collections: json['collections'],
      likes: json['likes'],
      comments: json['comments'],
      userId: json['user_id'],
      user: json['user'],
      userImageURL: json['userImageURL'],
    );
  }

  late int _id;
  late String _pageURL;
  late String _type;
  late String _tags;
  late String _previewURL;
  late int _previewWidth;
  late int _previewHeight;
  late String _webformatURL;
  late int _webformatWidth;
  late int _webformatHeight;
  late String _largeImageURL;
  late int _imageWidth;
  late int _imageHeight;
  late int _imageSize;
  late int _views;
  late int _downloads;
  late int _collections;
  late int _likes;
  late int _comments;
  late int _userId;
  late String _user;
  late String _userImageURL;

  int get id => _id;

  String get pageURL => _pageURL;

  String get type => _type;

  String get tags => _tags;

  String get previewURL => _previewURL;

  int get previewWidth => _previewWidth;

  int get previewHeight => _previewHeight;

  String get webformatURL => _webformatURL;

  int get webformatWidth => _webformatWidth;

  int get webformatHeight => _webformatHeight;

  String get largeImageURL => _largeImageURL;

  int get imageWidth => _imageWidth;

  int get imageHeight => _imageHeight;

  int get imageSize => _imageSize;

  int get views => _views;

  int get downloads => _downloads;

  int get collections => _collections;

  int get likes => _likes;

  int get comments => _comments;

  int get userId => _userId;

  String get user => _user;

  String get userImageURL => _userImageURL;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['pageURL'] = _pageURL;
    map['type'] = _type;
    map['tags'] = _tags;
    map['previewURL'] = _previewURL;
    map['previewWidth'] = _previewWidth;
    map['previewHeight'] = _previewHeight;
    map['webformatURL'] = _webformatURL;
    map['webformatWidth'] = _webformatWidth;
    map['webformatHeight'] = _webformatHeight;
    map['largeImageURL'] = _largeImageURL;
    map['imageWidth'] = _imageWidth;
    map['imageHeight'] = _imageHeight;
    map['imageSize'] = _imageSize;
    map['views'] = _views;
    map['downloads'] = _downloads;
    map['collections'] = _collections;
    map['likes'] = _likes;
    map['comments'] = _comments;
    map['user_id'] = _userId;
    map['user'] = _user;
    map['userImageURL'] = _userImageURL;
    return map;
  }
}
