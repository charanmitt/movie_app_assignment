import 'package:flutter/material.dart';
import 'package:movie_app_assignment/api/api.dart';
import 'package:movie_app_assignment/models/movie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app_assignment/trending_slider.dart';

String i_path ='https://image.tmdb.org/t/p/w500';
// ignore: must_be_immutable

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
        backgroundColor: Color.fromARGB(255, 21, 119, 135), // colour of top app bar
      ),

      backgroundColor: Color.fromARGB(255, 255, 255, 255),//represents home page background colour
      body : SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //Text doesnt moves to center
          children: [
            Text(
              'Popular Movies',
              style: GoogleFonts.aBeeZee(fontSize:18),
              ),
              SizedBox(height: 20,), 
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
                const snackBar = SnackBar(content: Text('App is under devolopment'));

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
            ListTile(
              leading: const Icon(Icons.app_registration_rounded),
              title: const Text('Signup'),
              onTap: () {
                const snackBar = SnackBar(content: Text('Signup Page'));

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text('Login'),
              onTap: () {
                const snackBar = SnackBar(content: Text('Login Page'));

                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                const snackBar = SnackBar(content: Text('Logout Page'));

                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
          ],
        )
      ),
      
            );
  }
}