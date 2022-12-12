import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PianoBlackButton extends StatelessWidget {
  const PianoBlackButton({
    Key? key,
    this.visible = true,
    required this.nameNote,
  }) : super(key: key);
  final bool visible;
  final String nameNote;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.5),
      child: SizedBox(
        width: 63,
        height: 170,
        child: Visibility(
          visible: visible,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) => Colors.black,
              ),
              overlayColor: MaterialStateProperty.resolveWith(
                (states) {
                  return states.contains(MaterialState.pressed)
                      ? const Color.fromARGB(255, 71, 70, 70)
                      : null;
                },
              ),
            ),
            onPressed: () {
              AudioPlayer().play(
                AssetSource('notes/$nameNote.mp3'),
              );
            },
            onLongPress: () {
              AudioPlayer().play(
                AssetSource('notes/$nameNote.mp3'),
              );
            },
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(''),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
