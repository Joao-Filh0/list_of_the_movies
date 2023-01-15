import 'package:flutter/material.dart';
import 'package:list_of_the_movies/features/movies/domain/entities/movies_entity.dart';

import '../../data/data_sources/movies_remote_data_source.dart';
import '../../data/data_sources/movies_remote_data_source_impl.dart';
import '../widgets/movie_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late MoviesRemoteDataSourceBase movies;

  @override
  void initState() {
    super.initState();
    movies = MoviesRemoteDataSource();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Movies"),
        ),
        body: FutureBuilder<List<Movies>>(
            future: movies.getAll(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Container(color: Colors.red);
              }
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return MovieTitle(
                    movie: snapshot.data![index],
                  );
                },
              );
            }));
  }
}
