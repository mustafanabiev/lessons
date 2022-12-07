import 'package:flutter/material.dart';
import 'package:sabak16_flutter/components/black_button.dart';
import 'package:sabak16_flutter/components/white_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('Flutter Piano'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Center(
              child: Text('do re mi fa ...'),
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        PianoWhiteButton(),
                        // PianoWhiteButton(),
                      ],
                    ),
                    Positioned(
                      left: 40.0,
                      right: 0.0,
                      top: 0.0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          PianoBlackButton(),
                          PianoBlackButton(),
                          PianoBlackButton(),
                          // PianoBlackButton(),
                          PianoBlackButton(),
                          PianoBlackButton(),
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
