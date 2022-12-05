import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int san = 10;
    String text = 'Salam';

    dynamic san2 = 20;
    dynamic text2 = 'Kyrgyzstan';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF213438),
        title: const Text('Flutter Xylophone'),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          CustomCard(
            number: 1,
            color: Color(0xFFEF443A),
          ),
          CustomCard(
            number: 2,
            color: Color(0xFFF99700),
          ),
          CustomCard(
            number: 3,
            color: Color(0xFFFFE93B),
          ),
          CustomCard(
            number: 4,
            color: Color(0xFF4CB050),
          ),
          CustomCard(
            number: 5,
            color: Color(0xFF2E968C),
          ),
          CustomCard(
            number: 6,
            color: Color(0xFF2996F5),
          ),
          CustomCard(
            number: 7,
            color: Color(0xFF9B28B1),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.number,
    required this.color,
  }) : super(key: key);

  final int number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          AudioPlayer().play(
            AssetSource('notes/note$number.wav'),
          );
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
