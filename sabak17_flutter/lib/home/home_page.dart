import 'package:flutter/material.dart';
import 'package:sabak17_flutter/components/black_button.dart';
import 'package:sabak17_flutter/components/white_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Flutter Piano'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        PianoWhiteButton(nameNote: 'do'),
                        PianoWhiteButton(nameNote: 're'),
                        PianoWhiteButton(nameNote: 'mi'),
                        PianoWhiteButton(nameNote: 'fa'),
                        PianoWhiteButton(nameNote: 'sol'),
                        PianoWhiteButton(nameNote: 'lya'),
                        PianoWhiteButton(nameNote: 'si'),
                      ],
                    ),
                    Positioned(
                      left: 40.0,
                      right: 0.0,
                      top: 0.0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          PianoBlackButton(nameNote: 'do'),
                          PianoBlackButton(nameNote: 're'),
                          PianoBlackButton(visible: false, nameNote: 'mi'),
                          PianoBlackButton(nameNote: 'fa'),
                          PianoBlackButton(nameNote: 'sol'),
                          PianoBlackButton(nameNote: 'lya'),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
