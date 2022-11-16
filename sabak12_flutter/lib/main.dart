import 'package:flutter/material.dart';

void main() {
  runApp(const MeninTirkemem());
}

class MeninTirkemem extends StatelessWidget {
  const MeninTirkemem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      appBar: AppBar(
        title: const Text('ТАПШЫРМА-03'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "I'am Rich",
              style: TextStyle(fontSize: 36),
            ),
          ],
        ),
      ),
    );
  }
}
