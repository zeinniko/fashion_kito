import 'package:flutter/material.dart';
import 'dart:async';
import 'package:gaya_kito/halaman/intro.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 5);
    return Timer(
      duration,
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) {
              return halamanIntro();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [Colors.white60, Colors.grey]),
          ),
          child: Center(
            child: Image.asset(
              "../../assets/images/logo.png",
              height: 200.0,
              width: 200.0,
            ),
          )),
    );
  }
}