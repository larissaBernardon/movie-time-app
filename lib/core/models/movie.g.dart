// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      id: json['id'] as int,
      title: json['title'] as String,
      synopsis: json['synopsis'] as String,
      genre: json['genre'] as String,
      coverUrl: json['coverUrl'] as String,
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'synopsis': instance.synopsis,
      'genre': instance.genre,
      'coverUrl': instance.coverUrl,
    };
