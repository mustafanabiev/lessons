import 'package:flutter/material.dart';
import 'package:sabak8_flutter/meninTirkemem.dart';

class EkinchiBet extends StatelessWidget {
  EkinchiBet({
    Key? key,
    required this.san,
  }) : super(key: key);

  int san;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Тапшырма 02',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xffBDBDBD),
              borderRadius: BorderRadius.circular(10),
            ),
            width: 360,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'сан: ',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  '$san',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
