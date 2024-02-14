import 'package:flutter/material.dart'; //material package

void main()
{
  runApp(MyApp());
  }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Material(
        child : Center(
          child: Container(
            child : Text('Flutter Movie App Assignment'),
            ),
            ),
            ),
    );
  }
}