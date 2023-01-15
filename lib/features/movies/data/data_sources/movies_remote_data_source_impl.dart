import 'package:dio/dio.dart';
import 'package:list_of_the_movies/features/movies/data/data_sources/movies_remote_data_source.dart';
import 'package:list_of_the_movies/services/http_movies.dart';

import '../../../../config/urls_config.dart';
import '../../domain/entities/movies_entity.dart';
import '../models/movies_model.dart';

class MoviesRemoteDataSource implements MoviesRemoteDataSourceBase {
  final HttpMovies http = HttpMovies();

  @override
  Future<List<Movies>> getAll() async {
    final url = "${UrlsMovies.baseUrls}${UrlsMovies.movies}";
    try {
      final Response response = await http.get<List<dynamic>>(url);

      final movies =
          response.data.map<Movies>((map) => MoviesModel.fromMap(map)).toList();
      return movies;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Movies> getById(int id) async {
    // TODO implements
    throw UnimplementedError();
  }

  @override
  Future<Movies> create(Movies movies) async {
    // TODO implements
    throw UnimplementedError();
  }

  @override
  Future<Movies> update(Movies movies) async {
    // TODO implements
    throw UnimplementedError();
  }

  @override
  Future<void> delete(int id) async {
    // TODO implements
    throw UnimplementedError();
  }

  @override
  Future<void> deleteAll() async {
    // TODO implements
    throw UnimplementedError();
  }
}
