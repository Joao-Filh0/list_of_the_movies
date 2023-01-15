import '../../domain/entities/movies_entity.dart';

abstract class MoviesRemoteDataSourceBase {
  Future<List<Movies>> getAll();

  Future<Movies> getById(int id);

  Future<Movies> create(Movies movies);

  Future<Movies> update(Movies movies);

  Future<void> delete(int id);

  Future<void> deleteAll();
}