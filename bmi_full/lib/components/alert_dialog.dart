import 'package:bmi_full/utils/app_colors.dart';
import 'package:bmi_full/utils/app_styles.dart';
import 'package:bmi_full/utils/app_text.dart';
import 'package:flutter/material.dart';

Future<void> showMyDialog({
  required BuildContext context,
  required String text,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.backgroundColor,
        title: const Text(
          AppText.appBarTitle,
          style: AppTextStyles.textWhiteF22,
          textAlign: TextAlign.center,
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                text,
                style: AppTextStyles.textWhiteF18,
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Кайра эсепте'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
