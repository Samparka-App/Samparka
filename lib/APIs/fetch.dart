import 'dart:convert';
import 'dart:io';
import 'package:samparka/APIs/urls.dart';
import 'package:http/http.dart' as http;


class API{
  Future<dynamic> getData()async{
    var response;
    try {
      final json = await http.get(Uri.parse("https://dummyjson.com/products"));
      response = _decode(json);
    }catch(Exception){
      print(Exception);
      throw Exception;
    }
    print("API recieved");
    return response;
  }
  dynamic _decode(http.Response res){
    switch(res.statusCode){
      case 200:
        print("JSON File recieved");
        return json.decode(res.body.toString());
      default:
        throw Exception(res.body.toString());
    }
  }
}


class ApiHelper{
  Future<dynamic> getData()async{
    var responseJson;
    try{
      final response = await http.get(Uri.parse(UrlConstants.baseUrl+UrlConstants.productsUrl));
      responseJson = _returnResponse(response);
    }catch (err){
      print("No Net");
      print(err);
      throw ("No Internet connection");
    }
    print("API get recieved");
    return responseJson;
  }

  dynamic _returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        var responseJson = jsonDecode(response.body.toString());
        print(responseJson);
        return responseJson;
      case 400:
        throw Exception(response.body.toString());
      case 401:
      case 403:
        throw Exception(response.body.toString());
      default:
        throw Exception("Error Occurred during Fetching");
    }
  }
}