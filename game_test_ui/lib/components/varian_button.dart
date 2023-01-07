import 'package:flutter/material.dart';
import 'package:game_test_ui/constants/app_colors.dart';

class VariantButton extends StatelessWidget {
  const VariantButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 135,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: AppColors.grey,
            child: Center(
              child: Text(
                index.toString(),
                style: const TextStyle(fontSize: 30),
              ),
            ),
          );
        },
      ),
    );
  }
}
