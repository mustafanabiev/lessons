import 'package:bmi/components/culculate_button.dart';
import 'package:bmi/components/slider.dart';
import 'package:bmi/components/status_card.dart';
import 'package:bmi/components/status_card2.dart';
import 'package:bmi/utils/app_colors.dart';
import 'package:bmi/utils/app_styles.dart';
import 'package:bmi/utils/app_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double currentSliderValue = 180;
  int weight = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const Text(
          AppText.appBarTitle,
          style: AppTextStyles.textWhiteF22,
        ),
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: const [
                  StatusCard(
                    icon: Icons.male,
                    text: AppText.male,
                  ),
                  SizedBox(width: 20),
                  StatusCard(
                    icon: Icons.female,
                    text: AppText.female,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SliderWidget(
                currentSliderValue: currentSliderValue,
                onChanged: (value) {
                  setState(() {
                    currentSliderValue = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Row(
                children: [
                  StatusCard2(
                    text: AppText.weight,
                    value: weight,
                    remove: (maani) {
                      setState(() {
                        weight = maani;
                      });
                    },
                    add: (maani) {
                      setState(() {
                        weight = maani;
                      });
                    },
                  ),
                  const SizedBox(width: 20),
                  StatusCard2(
                    text: AppText.age,
                    value: age,
                    remove: (maani) {
                      setState(() {
                        age = maani;
                      });
                    },
                    add: (maani) {
                      setState(() {
                        age = maani;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CulculateButton(),
    );
  }
}
