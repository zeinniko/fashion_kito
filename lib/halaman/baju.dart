import 'package:flutter/material.dart';


class Baju extends StatelessWidget {
  final String baju;
  const Baju({super.key, required this.baju});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GAYA KITO'),
        leading: Icon(Icons.shop),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Image.asset(baju),
      ),
    );
  }
}

