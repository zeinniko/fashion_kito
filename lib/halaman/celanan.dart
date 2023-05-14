import 'package:flutter/material.dart';

class Celana extends StatelessWidget {
  final String celana;
  const Celana({super.key, required this.celana});

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
              'Menu fashion celana',
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
                    celana,
                    height: 200.0,
                  ),
                  title:
                      Text('celana dengan desain yang baik \n dan bahan bagus'),
                  subtitle: Text('~ 190.000')),
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              child: ListTile(
                  leading: Image.asset(
                    celana,
                    height: 200.0,
                  ),
                  title:
                      Text('celana dengan desain yang baik \n dan bahan bagus'),
                  subtitle: Text('~ 89.999')),
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              child: ListTile(
                  leading: Image.asset(
                    celana,
                    height: 200.0,
                  ),
                  title:
                      Text('celana dengan desain yang baik \n dan bahan bagus'),
                  subtitle: Text('~ 55.000')),
            ),
          ],
        ),
      ),
    );
  }
}