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
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.exit_to_app))
          
          
        ],
      ),
      body: Container(
        child: Image.asset(baju),
      ),
    );
  }
}

