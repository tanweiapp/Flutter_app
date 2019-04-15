import 'package:dio/dio.dart';
import 'dart:async';

var dio = new Dio();

class NetWorkUtils {
  static Future get(String url, {Map<String, dynamic> parmas}) async {
    var response = await dio.get(url, data: parmas);
    return response.data;
  }

  static Future post(String url, Map<String, dynamic> params) async {
    var response = await dio.post(url, data: params);
    return response.data;
  }
  
}
