import '../../domain/entities/movies_entity.dart';

class MoviesModel extends Movies {
  MoviesModel({
    required super.title,
    required super.image,
    required super.description,
  });

  factory MoviesModel.fromMap(Map<String, dynamic> map) {
    return MoviesModel(
      title: map["title"],
      image: map["imageUrl"],
      description: map["description"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "title": title,
      "imageUrl": image,
      "description": description,
    };
  }
}
