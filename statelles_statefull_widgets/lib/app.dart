import 'package:flutter/material.dart';
import 'package:statelles_statefull_widgets/statefull_widget.dart';
import 'package:statelles_statefull_widgets/stateless_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyStateLessWidget(),
    );
  }
}
