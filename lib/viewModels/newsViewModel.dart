import 'package:news_app_project/models/newsApiModel.dart';
import 'package:news_app_project/repository/newsRepository.dart';

class Newsviewmodel {
  final _repo = Newsrepository();

  Future<NewsApiModel> fetchApi() async {
    final response = await _repo.fetchNewsApiModel();
    return response;
  }

  static fetchNewsApiModel() {}
}
