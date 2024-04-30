import 'package:dio/dio.dart';

import 'api_endpoints.dart';

class DioHelper {
  static late Dio dio;

  static initial() {
    dio = Dio(BaseOptions(
      baseUrl: ApiEndPoints.domainLink,
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    // String lang = 'ar',
  }) async {
    dio.options.headers = {"Content-Type": "application/json"};
    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
  }) async {
    dio.options.headers = {
      "Content-Type": "application/json",
    };
    return await dio.post(url, queryParameters: query, data: data);
  }

  //
  //
  //

  static Future<Response> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
    };
    return await dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }
  //
  //

  static Future<Response> deleteData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    // قم بإزالة رأس "Content-Type" من قائمة الهيدرز
    dio.options.headers.remove("Content-Type");

    return await dio.delete(
      url,
      queryParameters: query,
    );
  }
//
//
//
}
