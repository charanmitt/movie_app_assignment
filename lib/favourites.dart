import 'package:flutter/material.dart';
import 'package:movie_app_assignment/home_page.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  List<String> favoriteMovieList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Favourites'),
        leading: IconButton(
          icon:  const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
          })
    
      ),
      body: const Center(
        child: Text('Your Favourites will be here'),
        ),
    );
    
  }
}