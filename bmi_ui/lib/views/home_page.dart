import 'package:bmi_ui/components/culculate_button.dart';
import 'package:bmi_ui/components/status_card.dart';
import 'package:bmi_ui/utils/app_colors.dart';
import 'package:bmi_ui/utils/app_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const Text(
          AppText.appBarTitle,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
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
            const Expanded(
              child: Text('orto'),
            ),
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
          ],
        ),
      ),
      bottomNavigationBar: const CulculateButton(),
    );
  }
}
