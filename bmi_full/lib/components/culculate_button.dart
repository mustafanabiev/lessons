import 'dart:developer';

import 'package:bmi_full/utils/app_colors.dart';
import 'package:bmi_full/utils/app_styles.dart';
import 'package:bmi_full/utils/app_text.dart';
import 'package:flutter/material.dart';

class CulculateButton extends StatelessWidget {
  const CulculateButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 70,
        color: AppColors.buttonColor,
        child: const Center(
          child: Text(
            AppText.calculate,
            style: AppTextStyles.textWhiteF26,
          ),
        ),
      ),
    );
  }
}
