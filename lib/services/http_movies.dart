import 'package:dio/dio.dart';

import 'http.dart';

class HttpMovies implements IHttp {
  late Dio dio;

  HttpMovies() {
    dio = Dio();
  }


  @override
  Future<Response<T>> get<T>(String url, {Options? options}) async {
   return await dio.get<T>(url,options : options);
  }


  @override
  Future<Response> delete(String url, {Options? options}) {
    // TODO: implement delete
    throw UnimplementedError();
  }



  @override
  Future<Response> patch(String url, {Options? options}) {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  Future<Response> post(String url, {Options? options}) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future<Response> put(String url, {Options? options}) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
