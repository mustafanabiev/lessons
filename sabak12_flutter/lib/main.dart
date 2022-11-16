import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MeninTirkemem());
}

class MeninTirkemem extends StatelessWidget {
  const MeninTirkemem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I am Rich',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const IamRich(),
    );
  }
}

class IamRich extends StatelessWidget {
  const IamRich({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('ТАПШЫРМА-03'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "I'am Rich",
              style: TextStyle(
                fontSize: 36,
                fontFamily: 'Raleway',
              ),
            ),
            Image.asset(
              'images/jelek.jpg',
              width: 300,
              height: 300,
            ),
            Image.network(
              'https://picsum.photos/200/300',
              width: 300,
              height: 300,
            ),
            
          ],
        ),
      ),
    );
  }
}
