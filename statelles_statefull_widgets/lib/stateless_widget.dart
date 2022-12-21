import 'package:flutter/material.dart';

class MyStateLessWidget extends StatelessWidget {
  const MyStateLessWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int san = 0;

    void koshuu() {
      san++;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('StateLessWidget'),
      ),
      body: Center(
        child: Text(
          '$san',
          style: const TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: koshuu,
        child: const Icon(Icons.add),
      ),
    );
  }
}
