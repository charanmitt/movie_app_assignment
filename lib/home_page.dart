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
          children: [
            Text(
              'MITT TECHNOLOGIES'
              ),
              ],
              ),
        backgroundColor: const Color.fromARGB(255, 255, 0, 0), // colour of top app bar
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
            SizedBox(
            width:double.infinity,
            child: CarouselSlider.builder(
              itemCount: 10, 
              options: CarouselOptions(
                height: 300, 
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                viewportFraction: 0.55,
                autoPlayAnimationDuration: const Duration(seconds: 1),
              ),
              itemBuilder:(context,itemIndex,pageViewIndex){
                return Container(
                  height: 700,
                  width: 300,
                  color: Colors.white,);

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