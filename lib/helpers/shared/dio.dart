import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://cancer-api-2022.herokuapp.com/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String lang = 'en',
    String? token,
  }) async {
    dio.options.headers = {
      'lang': 'ar',
      'Content-Type': 'application/json',
      'Authorization': '$token',
    };
    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String url,
     Map<String, dynamic> ? data,
    Map<String, dynamic>? query,
    String lang = 'en',
    String? token,
  }) async {
    // dio.options.headers = {
    //   'lang': 'ar',
    //   'Content-Type': 'application/json',
    // };

    return await dio.post(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> putData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String lang = 'en',
    String? token,
  }) async {
    dio.options.headers = {
      'lang': 'ar',
      'Content-Type': 'application/json',
      'Authorization': '$token',
    };
    return await dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
