import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  CardPage({
    Key? key,
    required this.name,
    required this.kesip,
    required this.number,
    required this.email,
  }) : super(key: key);

  String name;
  String kesip;
  String number;
  String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00695c),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'ТАПШЫРМА-04',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(30),
                child: Image.asset(
                  'images/image.jpg',
                  height: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '$kesip DEVELOPER',
              style: const TextStyle(
                color: Color(0xffb2dfdb),
                fontSize: 18,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 180),
              child: Divider(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.white,
              height: 45,
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  const Icon(
                    Icons.phone,
                    color: Color(0xff00695c),
                  ),
                  const SizedBox(width: 30),
                  Text(
                    number,
                    style: const TextStyle(
                      color: Color(0xff00695c),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 45,
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  const Icon(
                    Icons.email,
                    color: Color(0xff00695c),
                  ),
                  const SizedBox(width: 30),
                  Text(
                    email,
                    style: const TextStyle(
                      color: Color(0xff00695c),
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
