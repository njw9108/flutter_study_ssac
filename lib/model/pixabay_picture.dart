/// id : 336378
/// pageURL : "https://pixabay.com/photos/laptop-workspace-desk-workstation-336378/"
/// type : "photo"
/// tags : "laptop, workspace, desk"
/// previewURL : "https://cdn.pixabay.com/photo/2014/05/02/21/50/laptop-336378_150.jpg"
/// previewWidth : 150
/// previewHeight : 99
/// webformatURL : "https://pixabay.com/get/gf155f94bc6c84cddb802c1dfa2a264624033d4d3a43bbd83b7867b37c6365d3bf1bf3e47403b9fc3b57c4647b0ab60a1_640.jpg"
/// webformatWidth : 640
/// webformatHeight : 426
/// largeImageURL : "https://pixabay.com/get/g9f80a39f594aa77014b390a074549258a9fca6badf0d04856ce8ee47f894e850751d1b3db2134ecbfe38d9e0e9eece32e8e19233cfaa93bbcd54e846c1d088ed_1280.jpg"
/// imageWidth : 5616
/// imageHeight : 3744
/// imageSize : 3780005
/// views : 1017515
/// downloads : 504812
/// collections : 4305
/// likes : 1746
/// comments : 442
/// user_id : 242387
/// user : "Free-Photos"
/// userImageURL : "https://cdn.pixabay.com/user/2014/05/07/00-10-34-2_250x250.jpg"

class PixabayPicture {
  PixabayPicture({
      int id, 
      String pageURL, 
      String type, 
      String tags, 
      String previewURL, 
      int previewWidth, 
      int previewHeight, 
      String webformatURL, 
      int webformatWidth, 
      int webformatHeight, 
      String largeImageURL, 
      int imageWidth, 
      int imageHeight, 
      int imageSize, 
      int views, 
      int downloads, 
      int collections, 
      int likes, 
      int comments, 
      int userId, 
      String user, 
      String userImageURL,}){
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

  PixabayPicture.fromJson(dynamic json) {
    _id = json['id'];
    _pageURL = json['pageURL'];
    _type = json['type'];
    _tags = json['tags'];
    _previewURL = json['previewURL'];
    _previewWidth = json['previewWidth'];
    _previewHeight = json['previewHeight'];
    _webformatURL = json['webformatURL'];
    _webformatWidth = json['webformatWidth'];
    _webformatHeight = json['webformatHeight'];
    _largeImageURL = json['largeImageURL'];
    _imageWidth = json['imageWidth'];
    _imageHeight = json['imageHeight'];
    _imageSize = json['imageSize'];
    _views = json['views'];
    _downloads = json['downloads'];
    _collections = json['collections'];
    _likes = json['likes'];
    _comments = json['comments'];
    _userId = json['user_id'];
    _user = json['user'];
    _userImageURL = json['userImageURL'];
  }
  int _id;
  String _pageURL;
  String _type;
  String _tags;
  String _previewURL;
  int _previewWidth;
  int _previewHeight;
  String _webformatURL;
  int _webformatWidth;
  int _webformatHeight;
  String _largeImageURL;
  int _imageWidth;
  int _imageHeight;
  int _imageSize;
  int _views;
  int _downloads;
  int _collections;
  int _likes;
  int _comments;
  int _userId;
  String _user;
  String _userImageURL;

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