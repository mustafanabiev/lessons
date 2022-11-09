// import: бир object импортто
import 'package:flutter/material.dart';

// void: bir funksianyn turu ech nerse kaitarbait
// main: bashtalgych funksianyn aty
// (): main din bir funksia ekendigin bildiret
// {}: main funksianun denesi (funksianun atkargan ishi jazylat)
// runApp: funksia-(tirkemeni jurguzup beret, material.dart tan kelet)
// const: constant => ozgorboyt => bir jolu kurulat

void main() {
  runApp(const MyApp());
}

// MyApp: bir classtyn aty
// extends: Parent classtan Child classka muras aluu
// StatelessWidget: Widgetten kelgen bir class
// super: child classtagy proportylerdy parent classka otkorot
// key: bir widgetke achkuchbergibiz kelse berebis
// StatelessWidget: ====> ?

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// @override: parent classtagu funksainy kaira orgortup jazuu
  @override
// Widget: build metodunun kaytaruu tibi
// build: funksianun(metod) aty
// BuildContext context: build funlsiasy ala turgan parametr
// BuildContext: =====> ?

  Widget build(BuildContext context) {
// return: build funksiasynyn kaitaruusu
// MaterialApp: =====> ?
    return MaterialApp(
// title: MaterialApptyn proportysi. String alat
      title: 'Flutter Demo',
// theme: MaterialApptyn proportysi. ThemeData alat
// ThemeData: temanun datasu, tema beruuchu widget
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
// home: MaterialApptyn proportysi. Widget alat
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:...',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
