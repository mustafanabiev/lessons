import 'package:bmi_full/utils/app_colors.dart';
import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: AppColors.cardColor,
        child: child,
      ),
    );
  }
}
