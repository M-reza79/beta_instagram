import 'package:beta_instagram/skrinz/manSkrin.dart';
import 'package:flutter/material.dart';
 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontFamily: 'GB',
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffF35383),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            textStyle: TextStyle(
              fontFamily: 'Gb',
              fontSize: 20,
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Manskrin(),
    );
  }
}
