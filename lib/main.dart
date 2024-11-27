import 'package:flutter/material.dart';
import 'package:plant_app/Home.dart';




void main() {
  runApp(PlantApp());
}

class PlantApp extends StatelessWidget {
  const PlantApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffF9F8FD),
      ),
      debugShowCheckedModeBanner: false,
      home:Home(),
    );
  }
}