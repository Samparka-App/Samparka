import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:samparka/jsonFiles/userModel.dart';

import '../models/models.dart';

class UrlConstants{
  static String baseUrl= "https://dummyjson.com";
  static String posts = "/posts";
  static String todos ="/todos";
}

Future<News> fetchData() async {
  final response = await http.get(Uri.parse(UrlConstants.baseUrl+UrlConstants.posts));

  if (response.statusCode == 200){
    return News.fromJson(json.decode(response.body));
  }else{
    throw Exception("Error");
  }
}

// Future<Todo> fetchTodos()async{
//   final response = await http.get(Uri.parse(UrlConstants.baseUrl+UrlConstants.todos));
//
// }