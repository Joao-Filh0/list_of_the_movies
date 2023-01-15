import 'package:flutter/material.dart';

import '../../domain/entities/movies_entity.dart';

class MovieTitle extends StatelessWidget {
  final Movies movie;
  const MovieTitle({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Image.network(movie.image),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Text(movie.title,
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        Text(movie.description)
      ]),
    ));
  }
}
