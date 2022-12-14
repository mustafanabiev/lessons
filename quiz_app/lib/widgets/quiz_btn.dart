import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  const QuizButton({
    Key? key,
    required this.tuuraButtonBu,
  }) : super(key: key);
  final bool tuuraButtonBu;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          // tuuraButtonBu == true; const Color(0xFF4caf52)
          // tuuraButtonBu == false; const Color(0xFFf7442d)
          backgroundColor:
              tuuraButtonBu ? const Color(0xFF4caf52) : const Color(0xFFf7442d),
        ),
        child: Text(
          tuuraButtonBu ? 'Туура' : 'Туура эмес',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
