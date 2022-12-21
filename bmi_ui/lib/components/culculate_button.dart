import 'package:bmi_ui/utils/app_colors.dart';
import 'package:bmi_ui/utils/app_text.dart';
import 'package:flutter/material.dart';

class CulculateButton extends StatelessWidget {
  const CulculateButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('basyldy');
      },
      child: Container(
        width: double.infinity,
        height: 70,
        color: AppColors.buttonColor,
        child: const Center(
          child: Text(
            AppText.calculate,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
