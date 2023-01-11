import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic result;

  fetchData() async {
    final dio = Dio();
    await Future.delayed(const Duration(seconds: 10));
    result = await dio.get('https://jsonplaceholder.typicode.com/posts');
    setState(() {});
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: result == null
            ? const CircularProgressIndicator()
            : Text(
                '$result',
                style: const TextStyle(fontSize: 30),
              ),
      ),
    );
  }
}
