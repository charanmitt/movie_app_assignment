import 'package:flutter/material.dart';
import 'package:movie_app_assignment/models/movie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  
late Future<List<Movie>> trenndingMovies;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center, // makes app bar title to be in center
          children: [
            Text(
              'MITT TECHNOLOGIES'
              ),
              ],
              ),
        backgroundColor: const Color.fromARGB(255, 94, 94, 94), // colour of top app bar
      ),

      backgroundColor: Color.fromARGB(255, 94, 94, 94),//represents home page background colour
      body : SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //Text doesnt moves to center
          children: [
            Text(
              'Popular Movies',
              style: GoogleFonts.aBeeZee(fontSize:25),
              ),
              SizedBox(height: 20,),  
            SizedBox(
            width:double.infinity,
            child: CarouselSlider.builder(
              itemCount: 10, 
              options: CarouselOptions(
                height: 500, 
                autoPlay: true,
                viewportFraction: 0.55,
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: const Duration(seconds: 1),
              ),
              itemBuilder:(context,itemIndex,pageViewIndex){
                return ClipRRect(
                  borderRadius: BorderRadius.circular(12), // value changes the shape of the widget
                  child: Container(
                    height: 300,
                    width: 400,
                    color: Colors.white,),
                );

              } , 
              )
            )
          ],
        )
      ),
      drawer: Drawer(),
            );
  }
}