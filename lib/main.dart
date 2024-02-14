import 'package:flutter/material.dart'; //material package
import 'home_page.dart';
void main()
{
  runApp(MyApp());
  }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key:key); // not necessary beacuse we are not pushing any data so we can remove it if we  want

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : HomePage(),
    );
  }
}