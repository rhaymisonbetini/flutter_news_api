import 'dart:convert';

import 'package:flutter_flutter_news/models/ArticleModel.dart';
import 'package:http/http.dart' as http;

class News {
  final String url =
      'https://newsapi.org/v2/top-headlines?country=br&category=business&apiKey=';
  final String key = '022750ea6e89454e87c885047ffc6087';

  List<ArticleModel> news = [];

  Future<void> getNews() async {
    var response = await http.get(url + key);
    var jsonData = jsonDecode(response.body);

    if (jsonData["status"] == "ok") {
      jsonData["articles"].forEach(
        (element) {
          if (element["urlToImage"] != null && element["description"] != null) {
            ArticleModel newArticle = ArticleModel(
              element["author"],
              element["title"],
              element["description"],
              element["url"],
              element["urlToImage"],
              element["content"],
              element["publishedAt"],
            );
            news.add(newArticle);
          }
        },
      );
    }
    return news;
  }
}
