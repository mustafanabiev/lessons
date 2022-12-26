import 'package:bmi/utils/app_colors.dart';
import 'package:bmi/utils/app_styles.dart';
import 'package:bmi/utils/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    Key? key,
    required this.currentSliderValue,
    required this.onChanged,
  }) : super(key: key);
  final double currentSliderValue;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: AppColors.cardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            AppText.height,
            style: AppTextStyles.textGreyF22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${currentSliderValue.toInt()}',
                style: AppTextStyles.textWhiteF50,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  AppText.cm,
                  style: AppTextStyles.textGreyF22,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              width: double.infinity,
              child: CupertinoSlider(
                max: 300,
                value: currentSliderValue,
                onChanged: onChanged,
                activeColor: AppColors.whiteColor,
                thumbColor: AppColors.buttonColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
