import 'dart:math';

import 'package:bmi_full/components/alert_dialog.dart';
import 'package:bmi_full/components/culculate_button.dart';
import 'package:bmi_full/components/male_female.dart';
import 'package:bmi_full/components/slider.dart';
import 'package:bmi_full/components/status_card.dart';
import 'package:bmi_full/components/weight_age.dart';
import 'package:bmi_full/utils/app_colors.dart';
import 'package:bmi_full/utils/app_styles.dart';
import 'package:bmi_full/utils/app_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFemale = false;
  double height = 180;
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
                children: [
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = false;
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.male,
                        text: AppText.male,
                        isFemale: !isFemale,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = true;
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.female,
                        text: AppText.female,
                        isFemale: isFemale,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            StatusCard(
              child: SliderWidget(
                currentSliderValue: height,
                onChanged: (value) {
                  setState(() {
                    height = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: WeightAge(
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
                  ),
                  const SizedBox(width: 20),
                  StatusCard(
                    child: WeightAge(
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CulculateButton(
        onTap: () {
          final result = weight / pow(height / 100, 2);
          if (result < 18.5) {
            showMyDialog(
              context: context,
              text: 'Сенин салмагын аз экен. Кобуроок же',
            );
          } else if (result >= 18.5 && result <= 24.9) {
            showMyDialog(
              context: context,
              text: 'Сенин салмагын жакшы. Молодец.',
            );
          } else if (result > 24.9) {
            showMyDialog(
              context: context,
              text: 'Сенде ашыкча салмак коп. Озуно жакшы кара',
            );
          } else {
            showMyDialog(
              context: context,
              text: 'Маалымат алууда катачылыктар бар',
            );
          }
        },
      ),
    );
  }
}
