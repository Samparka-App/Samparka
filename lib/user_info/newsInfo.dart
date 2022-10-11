import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:samparka/user_info/userModel.dart';

class UrlConstants{
  static String baseUrl= "https://dummyjson.com";
  static String posts = "/posts";
}

Future<dynamic> fetchData() async {
  final response = await http.get(Uri.parse(UrlConstants.baseUrl+UrlConstants.posts));

  if (response.statusCode == 200){
    return News.fromJson(json.decode(response.body));
  }else{
    throw Exception("Error");
  }
}