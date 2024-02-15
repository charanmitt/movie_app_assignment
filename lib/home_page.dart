import 'package:flutter/material.dart';
import 'movie_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center, // makes app bar title to be in center
          children: [Text('MOVIEFLIX'),],),
        backgroundColor: const Color.fromARGB(255, 255, 0, 0), // colour of top app bar
      ),

      backgroundColor: Color.fromARGB(255, 255, 250, 250),//represents home page background colour
      body : SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Popular Movies',style: GoogleFonts.aBeeZee(fontSize:25),
              ),          
            SizedBox(
            width:double.infinity,
            child: CarouselSlider.builder(
              itemCount: 10, 
              itemBuilder:(context,itemIndex,pageViewIndex){
                return Container(
                  height: 300,
                  width: 300,
                  color: Colors.amber,);

              } , 
              options: CarouselOptions())
            )
          ],
        )
      ),
      drawer: Drawer(),
            );
  }
}