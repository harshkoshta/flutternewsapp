import 'dart:convert';
import 'package:flutter_app/model/article.dart';
import 'package:http/http.dart' as http;

class News {
  List<Article> list = [];
  String url;
News([this.url]);
  Future<void> getNews(String url) async {
//    String url =
//        "http://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=404b004c9fcf45809707fb4ee17f95d4";
  if (url == null) {
    url = "http://newsapi.org/v2/top-headlines?country=in&apiKey=404b004c9fcf45809707fb4ee17f95d4";
  }

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if (jsonData["status"] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          Article article = Article(
            title: element["title"],
            urlToImg: element["urlToImage"],
            description: element["description"],
            url: element["url"]
          );
          list.add(article);
        }
      });
    }
  }
}
