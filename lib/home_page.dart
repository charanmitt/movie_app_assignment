import 'package:flutter/material.dart';
import 'package:movie_app_assignment/api/api.dart';
import 'package:movie_app_assignment/favourites.dart';
import 'package:movie_app_assignment/home1.dart';
import 'package:movie_app_assignment/models/movie.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app_assignment/search_page.dart';
import 'package:movie_app_assignment/trending_slider.dart';

import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

late Future<List<Movie>> popularMovies;
@override
  void initState() {
    super.initState();
    popularMovies = Api().getPopularMovies();
  
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Row(
          mainAxisAlignment: MainAxisAlignment.center, // makes app bar title to be in center
          children: [
            Text(
              'MOVIES APP'
              ),
              ],
              ),
        backgroundColor: const Color.fromARGB(255, 21, 119, 135), // colour of top app bar
      ),

      backgroundColor: const Color.fromARGB(255, 255, 255, 255),//represents home page background colour
      body : SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //Text doesnt moves to center
          children: [
            Text(
              'Popular Movies',
              style: GoogleFonts.aBeeZee(fontSize:18),
              ),
              const SizedBox(height: 20,), 
              SizedBox(
                child: FutureBuilder(
                  future: popularMovies, 
                  builder: (context,snapshot)
                  {
                    if(snapshot.hasError)
                    {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    }
                    else if(snapshot.hasData)
                    {
                      return  TrendingSlider(snapshot: snapshot);
                    }
                    else
                    {
                      return const Center(child: CircularProgressIndicator());
                    }
                  }),
              ) ,


              const SizedBox(height: 20,),

              Center( child :Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  final Uri url_link = Uri.parse('https://www.themoviedb.org/movie');
                  launchUrl(url_link);
                },
                child: const Text(
                  'Click here for more',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            ),
            
          ],
        )
      ),
      drawer: Drawer(
        
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.home_filled),
              title: const Text('Home'),
              onTap: () {
                const snackBar = SnackBar(content: Text('You are in Home Page'));

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Search'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite_outline),
              title: const Text('Favourites'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Favorites()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MainHome()));
              },
            ),
          ],
        )
      ),
    );
  }
}