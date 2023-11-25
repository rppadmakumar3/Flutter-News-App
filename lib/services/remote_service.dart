import 'package:http/http.dart' as http;

import '../models/news_model.dart';

class RemoteNewsService {
  static var client = http.Client();

  static Future<List<NewsArticle>?> fetchNewsArticles() async {
    var response = await client.get(Uri.parse(
        "https://newsapi.org/v2/everything?q=apple&from=2023-11-24&to=2023-11-24&sortBy=popularity&apiKey=REPLACE_API_KEY"));
    if (response.statusCode == 200) {
      return newsArticleFromJson(response.body);
    } else {
      return null;
    }
  }
}
