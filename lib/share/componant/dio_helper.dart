import 'package:dio/dio.dart';

class DioHelper{
  static late Dio dio;
  static init(){
    dio = Dio(
        BaseOptions(
            baseUrl: "http://130.61.130.252/api/",
            receiveDataWhenStatusError: true
        )
    );
  }


  static Future<Response>getData({required String url , Map<String,dynamic>? queryParameters}) async{
    dio.options.headers = {
      "Content-Type": "application/json",
      //todo: add token
      "Authorization": "Bearer ",
    };
    return await  dio.get(
        url,
        queryParameters:queryParameters,
    );

  }

  static Future<Response>postData({required String url ,  Map<String,dynamic>? queryParameters, required Map<String,dynamic> data}) async{
    dio.options.headers = {
      "Content-Type": "application/json",
      //todo: add token
      "Authorization": "Bearer ",
    };
    return await  dio.post(
        url,
        queryParameters:queryParameters,
      data: data,
    );
  }

  static Future<Response>patchData({required String url ,  Map<String,dynamic>? queryParameters, required Map<String,dynamic> data}) async{
    dio.options.headers = {
      "Content-Type": "application/json",
      //todo: add token
      "Authorization": "Bearer ",
    };
    return await  dio.patch(
        url,
        queryParameters:queryParameters,
      data: data,
    );
  }

  static Future<Response>putData({required String url ,  Map<String,dynamic>? queryParameters, required Map<String,dynamic> data}) async{
    dio.options.headers = {
      "Content-Type": "application/json",
      //todo: add token
      "Authorization": "Bearer ",
    };
    return await  dio.put(
        url,
        queryParameters:queryParameters,
      data: data,
    );
  }
  static Future<Response>deleteData({required String url ,  Map<String,dynamic>? queryParameters, Map<String,dynamic>? data}) async{
    dio.options.headers = {
      "Content-Type": "application/json",
      //todo: add token
      "Authorization": "Bearer ",
    };
    return await  dio.delete(
        url,
        queryParameters:queryParameters,
      data: data,
    );
  }
}