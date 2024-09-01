import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
class Api{
  Future<dynamic>get ({required String url, @required String? token})async{
    Map<String,String> header={};
    if(token!=null){
      header.addAll({
        'Authorization':'Bearer $token'
      });
    }
    http.Response response= await http.get(Uri.parse(url),headers: header);
    if(response.statusCode==200){
      print(' the response body in api get ${response.body}');
      return jsonDecode(response.body);
    }else{
      throw Exception('there are problem  is api get ${response.statusCode}');
    }
  }
  Future<dynamic> post({required String url
    , @required dynamic body,@required String? token})async{
    Map<String,String> header={};
    if(token!=null){
      header.addAll({
        'Authorization':'Bearer $token'
      });
    }
    http.Response response=
    await http.post(Uri.parse(url),
        body:body,
    headers: header);
    if(response.statusCode==200){
      Map<String,dynamic>  data=jsonDecode(response.body);
      // print(response.body);
      return data;
    }
    else{
      // throw Exception(jsonDecode(response.body));
      throw Exception('there is a proble with status code in api helper post ${response.statusCode} with body ${jsonDecode(response.body)}');
    }

  }
  Future<dynamic> put({required String url
    , @required dynamic body,@required String? token})async{
    Map<String,String> header={};
    header.addAll({
      'Content-Type':'application/x-www-form-urlencoded'
    });
    if(token!=null){
      header.addAll({
        'Authorization':'Bearer $token'
      });
    }
    print('the url 1 in put api  $url body=$body ');
    http.Response response=
    await http.put(Uri.parse(url),
        body:body,
        headers: header);
    print(5);
    if(response.statusCode==200){

      print(6);
      Map<String,dynamic>  data=jsonDecode(response.body);
      print( 'the data is 1  in put api $data');
      // print(response.body);
      return data;
    }
    else{
      print(7);
      print(response.statusCode);
      // throw Exception(jsonDecode(response.body));
      throw Exception('there is a proble with status code in api helper post ${response.statusCode} with body ${jsonDecode(response.body)}');
    }

  }

}



