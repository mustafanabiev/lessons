import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz_model.dart';
import 'package:quiz_app/widgets/quiz_btn.dart';
import 'package:quiz_app/widgets/result_btn.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              quizzes[index].question,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const Spacer(),
            // 1
            const QuizButton(
              tuuraButtonBu: true,
            ),
            const SizedBox(height: 20),
            // 2
            const QuizButton(
              tuuraButtonBu: false,
            ),
            const SizedBox(height: 50),
            Row(
              children: const [
                ResultIcon(tuuraIconBu: true),
                ResultIcon(tuuraIconBu: false),
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        'Тапшырма - 07',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }
}
