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
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Text(
              'Menu fashion baju',
              style: TextStyle(
                color: Colors.red,
                fontFamily: 'Cambria',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              child: ListTile(
                  leading: Image.asset(
                    baju,
                    height: 200.0,
                  ),
                  title:
                      Text('Baju dengan desain yang baik \n dan bahan bagus'),
                  subtitle: Text('~ 99.999')),
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              child: ListTile(
                  leading: Image.asset(
                    baju,
                    height: 200.0,
                  ),
                  title:
                      Text('Baju dengan desain yang baik \n dan bahan bagus'),
                  subtitle: Text('~ 99.999')),
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              child: ListTile(
                  leading: Image.asset(
                    baju,
                    height: 200.0,
                  ),
                  title:
                      Text('Baju dengan desain yang baik \n dan bahan bagus'),
                  subtitle: Text('~ 99.999')),
            ),
          ],
        ),
      ),
    );
  }
}