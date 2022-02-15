import 'package:flutter/material.dart';
import 'package:loginandsignup/screens/home_screen.dart';
import 'package:loginandsignup/screens/login_page.dart';
import 'package:loginandsignup/screens/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginPage(),
        '/homescreen' : (context) => HomeScreen(),
      },
      home:WelcomePage(),
    );
  }
}

