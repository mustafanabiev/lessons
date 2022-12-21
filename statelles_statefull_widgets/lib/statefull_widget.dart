import 'package:flutter/material.dart';

class MyStateFullWidget extends StatefulWidget {
  const MyStateFullWidget({Key? key}) : super(key: key);
  @override
  _MyStateFullWidgetState createState() => _MyStateFullWidgetState();
}

class _MyStateFullWidgetState extends State<MyStateFullWidget> {
  int san = 1;

  void koshuu() {
    setState(() {
      san++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StateFullWidget'),
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
