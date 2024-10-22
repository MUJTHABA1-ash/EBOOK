import 'dart:convert';


import 'package:http/http.dart';
import 'package:untitled9/Repository/Model_Class/Book_Model.dart';


import '../../Model_Class/Details_Model.dart';
import '../api_client.dart';


class BookApi {
  ApiClient apiClient = ApiClient();


  Future<List<BookModel>> getBook() async {
    String trendingpath = "https://hapi-books.p.rapidapi.com/top/2021";
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return BookModel.listFromJson(jsonDecode(response.body));
  }
  Future <DetailsModel> getDetails(String id) async {
    String trendingpath = "https://hapi-books.p.rapidapi.com/book/$id";
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return DetailsModel.fromJson(jsonDecode(response.body));
  }
}