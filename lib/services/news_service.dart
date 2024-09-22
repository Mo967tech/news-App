import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  NewsService._();
  factory NewsService() => _helper ??= NewsService._();

  static NewsService? _helper;
  final Dio dio = Dio();

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=82e54cdcac704616a7db324b06d8cc94&category=$category");

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articleModels = [];

      // articleModels.add(
      //   ArticleModel(
      //     image: article["urlToImage"],
      //     title: article["title"],
      //     subTitle: article["description"],
      //   ),
      // );
      for (final dynamic article in articles) {
        articleModels.add(ArticleModel.fromJson(article));
      }

      return articleModels;
    } catch (e) {
      return [];
    }
  }
}
