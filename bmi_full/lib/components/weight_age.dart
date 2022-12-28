import 'package:bmi_full/utils/app_colors.dart';
import 'package:bmi_full/utils/app_styles.dart';
import 'package:flutter/material.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    required this.text,
    required this.value,
    required this.remove,
    required this.add,
    Key? key,
  }) : super(key: key);
  final String text;
  final int value;
  final void Function(int) remove;
  final void Function(int) add;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppTextStyles.textGreyF22,
        ),
        Text(
          '$value',
          style: AppTextStyles.textWhiteF50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RemoveAddButton(
              iconData: Icons.remove,
              onPressed: () => remove(value - 1),
            ),
            const SizedBox(width: 20),
            RemoveAddButton(
              iconData: Icons.add,
              onPressed: () => add(value + 1),
            ),
          ],
        ),
      ],
    );
  }
}

class RemoveAddButton extends StatelessWidget {
  const RemoveAddButton({
    Key? key,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);
  final IconData iconData;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.button2Color,
      foregroundColor: AppColors.whiteColor,
      onPressed: onPressed,
      child: Icon(
        iconData,
        size: 30,
      ),
    );
  }
}
