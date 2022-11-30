import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftKubik = 1;
  int rightKubik = 5;

  @override
  Widget build(BuildContext context) {
    print('build kuruldu');
    return Scaffold(
      backgroundColor: const Color(0xffFF5353),
      appBar: AppBar(
        title: const Text(
          'ТАПШЫРМА - 05',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: const Color(0xffFF5353),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    leftKubik = Random().nextInt(7);
                  });

                  /// Бул шартты кобунчо логикада иштетебиз
                  // if (leftKubik == 0) {
                  //   leftKubik = 1;
                  // } else {
                  //   leftKubik;
                  // }

                  /// Бул шартты кобунчо UI да иштетебиз
                  // leftKubik == 0 ? leftKubik = 1 : leftKubik
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/dice${leftKubik == 0 ? leftKubik = 1 : leftKubik}.png',
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    rightKubik = Random().nextInt(7);
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/dice${rightKubik == 0 ? rightKubik = 1 : rightKubik}.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
