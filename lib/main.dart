
import 'package:flutter/material.dart';
import 'package:assignment_17_google_map/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Google Map",
      debugShowCheckedModeBanner: false,

      home: HomeScreen(),
    );
  }
}