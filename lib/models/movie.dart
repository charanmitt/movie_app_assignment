// ignore: unused_import
import 'package:flutter/material.dart';

class Movie{
  String title; // these are the things that we take from the json which we get from api
  String backDropPath;
  String originalTitle;
  String overview;
  String posterPath;
  String releaseDate;
  double voteAverage;

  Movie(
    {
    required this.title,
    required this.backDropPath,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
  }
  );
  factory Movie.fromJson(Map<String,dynamic> json)//json file is a map
  {
    return Movie(
      title: json['title'] , 
      backDropPath: json['backdrop_path'], 
      originalTitle: json['original_title'], 
      overview: json['overview'], 
      posterPath: json['poster_path'], 
      releaseDate: json['release_date'], 
      voteAverage: json['vote_average']
      );
  }

  Map<String, dynamic> toJson() => {
    'title':title,
    'overview': overview,
  };

}