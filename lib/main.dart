import 'package:flutter/material.dart';
import 'package:gaya_kito/halaman/splashscreen.dart';
import 'package:gaya_kito/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
      theme: ThemeData(
        fontFamily: 'FlashRogers',
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}