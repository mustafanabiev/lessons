import 'package:flutter/material.dart';

class WidgetAppBar extends StatelessWidget {
  const WidgetAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.add,
          color: Colors.black,
          size: 28,
        ),
        title: const Text(
          'Instagram',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Icon(
            Icons.favorite_outline,
            color: Colors.black,
          ),
          SizedBox(width: 20),
          Icon(
            Icons.send,
            color: Colors.black,
          ),
          SizedBox(width: 20),
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
    );
  }
}
