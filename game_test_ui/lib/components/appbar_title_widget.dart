import 'package:flutter/material.dart';
import 'package:game_test_ui/constants/app_colors.dart';

class AppBarTitleWidget extends StatelessWidget {
  const AppBarTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Row(
              children: const [
                Icon(Icons.tips_and_updates, color: AppColors.yellow),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text('32', style: TextStyle(fontSize: 18)),
                ),
                Icon(Icons.add_circle, color: AppColors.green),
              ],
            ),
          ),
        ),
        const Text('3', style: TextStyle(fontSize: 22)),
        Row(
          children: [
            SizedBox(
              width: 70,
              height: 30,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Icon(Icons.favorite, color: AppColors.red);
                },
              ),
            ),
            InkWell(onTap: () {}, child: const Icon(Icons.more_vert)),
          ],
        ),
      ],
    );
  }
}
