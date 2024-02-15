import 'dart:convert';
// ignore: unused_import
import 'dart:html';
import 'package:http/http.dart' as http;
import 'package:movie_app_assignment/constants.dart';
import 'package:movie_app_assignment/models/movie.dart';
class Api{
  static const popular_url = 'https://api.themoviedb.org/3/movie/popular?api_key=${Constants.API_KEY}';

Future<List<Movie>> getPopularMovies() async{
final response = await http.get(Uri.parse(popular_url));
if(response.statusCode == 200){
  final decodedData = json.decode(response.body)['results'] as List;
  print(decodedData);
  return decodedData.map((movie) => Movie.fromJson(movie)).toList();
}
else{
  throw Exception('Something Happend');
}
}
}