import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:news_app_project/models/newsApiModel.dart';

class Newsrepository {
  Future<NewsApiModel> fetchNewsApiModel() async {
    String Url =
        "https://newsapi.org/v2/everything?q=tesla&from=2024-11-19&sortBy=publishedAt&apiKey=7739b0725e63465a9a616aadcafd9569";

    final response = await http.get(Uri.parse(Url));
    print(response.body);

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return NewsApiModel.fromJson(body);
    }
    throw Exception("Error hai");
  }
}
