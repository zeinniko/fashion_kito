import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  final String logo;
  const Landing({super.key, required this.logo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GAYA KITO'),
        leading: Image.asset(logo),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 20.0,
            ),
            _slider(),
            Container(
              padding: EdgeInsets.fromLTRB(75.0, 10.0, 75.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_box_sharp),
                  Text('Menu Simple'),
                  Divider(
                    thickness: 3,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 75.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.green),
                    padding: EdgeInsets.all(5.0),
                    child: GestureDetector(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('../assets/images/baju.jpg', height: 32.0,),
                            Text('Baju'),
                          ],
                        ),
                      ),
                      onTap: () {Navigator.pushNamed(
                            context, '/baju',
                            arguments: '../assets/images/baju.jpg'
                          );},
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Container(
                    width: 75.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.green),
                    padding: EdgeInsets.all(5.0),
                    child: GestureDetector(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('../assets/images/celana.jpg', height: 32.0,),
                            Text('Celana'),
                          ],
                        ),
                      ),
                      onTap: () {Navigator.pushNamed(
                            context, '/celana',
                            arguments: '../assets/images/celana.jpg'
                          );},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 75.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.green),
                    padding: EdgeInsets.all(5.0),
                    child: GestureDetector(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Image.asset('name'),
                            // Text('Baju'),
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Container(
                    width: 75.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.yellow),
                    child: GestureDetector(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Image.asset('name'),
                            // Text('Baju'),
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _slider() {
  return Container(
    height: 200.0,
    width: double.infinity,
    child: Swiper.children(
      autoplay: true,
      children: [
        Image.asset(
          '../assets/images/slide1.webp',
          fit: BoxFit.cover,
        ),
        Image.asset(
          '../assets/images/slide2.jpg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          '../assets/images/slide3.webp',
          fit: BoxFit.cover,
        ),
      ],
      control: SwiperControl(),
    ),
  );
}
