import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Биринчи Тиркеме',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MeninTirkemem(),
    );
  }
}

class MeninTirkemem extends StatefulWidget {
  const MeninTirkemem({super.key});

  @override
  State<MeninTirkemem> createState() => _MeninTirkememState();
}

class _MeninTirkememState extends State<MeninTirkemem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Биринчи Тиркеме'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Salam Kurs10',
              style: TextStyle(fontSize: 22),
            ),
            Text(
              '0',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
