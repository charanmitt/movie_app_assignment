import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_assignment/fixed.dart';
class TrendingSlider extends StatelessWidget 
{
  const TrendingSlider({
    super.key , required this.snapshot,
    });
  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return SizedBox( // this is our card
            width:double.infinity,
            child: CarouselSlider.builder(
              itemCount: 20, 
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
                  child: SizedBox(
                    height: 300,
                    width: 400,
                    child: Image.network(
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.cover,
                      '${Fixed.imagePath}${snapshot.data[itemIndex].posterPath}',
                    ),
                ),
                  );

              } , 
              ),
            );
            
  }
}