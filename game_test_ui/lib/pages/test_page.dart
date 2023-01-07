import 'package:flutter/material.dart';
import 'package:game_test_ui/components/appbar_title_widget.dart';
import 'package:game_test_ui/components/slider_widget.dart';
import 'package:game_test_ui/components/varian_button.dart';
import 'package:game_test_ui/constants/app_colors.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.bgColor,
        title: const AppBarTitleWidget(),
        elevation: 0,
      ),
      body: Column(
        children: [
          const SliderWidget(),
          const SizedBox(height: 30),
          const Text('Bishkek', style: TextStyle(fontSize: 32)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset('assets/images/bishkek.jpeg'),
            ),
          ),
          const VariantButton(),
        ],
      ),
    );
  }
}
