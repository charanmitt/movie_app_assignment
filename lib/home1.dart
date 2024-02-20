import 'package:flutter/material.dart';
import 'package:movie_app_assignment/login_page.dart';
import 'package:movie_app_assignment/signup_page.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: <Widget>
          [
            const Padding(
              padding: EdgeInsets.only(top: 80.0),
              child: Center(
                child: SizedBox(
                    width: 200,
                    height: 100,),
              ),
            ),

        Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),

             const SizedBox(height: 20,),

            const Text('(or)'),

            const SizedBox(height: 20,),

            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupPage()));
                },
                child: const Text(
                  'SignUp',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),

          ],
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}