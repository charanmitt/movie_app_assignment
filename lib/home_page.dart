import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String name = "Flutter";
  var submit = "By feb 21";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Movie App'),
      ),
        body : Center(
          child: Container(
            child : Text('$name Movie App Assignment $submit'),
            ),
            ),
      drawer: Drawer(),
            );
  }
}