
class BookModel {
  String? bookId;
  String? name;
  String? category;
  String? cover;
  String? url;

  BookModel({this.bookId, this.name, this.category, this.cover, this.url});

  BookModel.fromJson(Map<String, dynamic> json) {
    if(json["book_id"] is String) {
      bookId = json["book_id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["category"] is String) {
      category = json["category"];
    }
    if(json["cover"] is String) {
      cover = json["cover"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
  }

  static List<BookModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => BookModel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["book_id"] = bookId;
    _data["name"] = name;
    _data["category"] = category;
    _data["cover"] = cover;
    _data["url"] = url;
    return _data;
  }
  static List<BookModel> listFromJson(List<dynamic> json) {
     return json == null
     ? []
     : json.map((value) => BookModel.fromJson(value)).toList();
     }
  BookModel copyWith({
    String? bookId,
    String? name,
    String? category,
    String? cover,
    String? url,
  }) => BookModel(
    bookId: bookId ?? this.bookId,
    name: name ?? this.name,
    category: category ?? this.category,
    cover: cover ?? this.cover,
    url: url ?? this.url,
  );
}