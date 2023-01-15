import 'package:dio/dio.dart';

abstract class IHttp {
  Future<Response<T>> get<T>(String url,{Options options});
  Future<Response> post(String url,{Options options});
  Future<Response> delete(String url,{Options options});
  Future<Response> put(String url,{Options options});
  Future<Response> patch(String url,{Options options});
}
