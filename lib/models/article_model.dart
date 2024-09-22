class ArticleModel {
  const ArticleModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.url,
  });

  final String? image, subTitle;
  final String title;
  final String url;
  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      image: json["urlToImage"],
      title: json["title"],
      subTitle: json["description"],
      url: json["url"],
    );
  }
}
