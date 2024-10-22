
class DetailsModel {
  int? bookId;
  String? name;
  String? cover;
  String? url;
  List<String>? authors;
  double? rating;
  int? pages;
  String? publishedDate;
  String? synopsis;

  DetailsModel({this.bookId, this.name, this.cover, this.url, this.authors, this.rating, this.pages, this.publishedDate, this.synopsis});

  DetailsModel.fromJson(Map<String, dynamic> json) {
    if(json["book_id"] is num) {
      bookId = (json["book_id"] as num).toInt();
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["cover"] is String) {
      cover = json["cover"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
    if(json["authors"] is List) {
      authors = json["authors"] == null ? null : List<String>.from(json["authors"]);
    }
    if(json["rating"] is num) {
      rating = (json["rating"] as num).toDouble();
    }
    if(json["pages"] is num) {
      pages = (json["pages"] as num).toInt();
    }
    if(json["published_date"] is String) {
      publishedDate = json["published_date"];
    }
    if(json["synopsis"] is String) {
      synopsis = json["synopsis"];
    }
  }

  static List<DetailsModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => DetailsModel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["book_id"] = bookId;
    _data["name"] = name;
    _data["cover"] = cover;
    _data["url"] = url;
    if(authors != null) {
      _data["authors"] = authors;
    }
    _data["rating"] = rating;
    _data["pages"] = pages;
    _data["published_date"] = publishedDate;
    _data["synopsis"] = synopsis;
    return _data;
  }


  DetailsModel copyWith({
    int? bookId,
    String? name,
    String? cover,
    String? url,
    List<String>? authors,
    double? rating,
    int? pages,
    String? publishedDate,
    String? synopsis,
  }) => DetailsModel(
    bookId: bookId ?? this.bookId,
    name: name ?? this.name,
    cover: cover ?? this.cover,
    url: url ?? this.url,
    authors: authors ?? this.authors,
    rating: rating ?? this.rating,
    pages: pages ?? this.pages,
    publishedDate: publishedDate ?? this.publishedDate,
    synopsis: synopsis ?? this.synopsis,
  );
}