import 'package:flutter/material.dart';
import 'package:game_test_full/constants/app_colors.dart';
import 'package:game_test_full/models/continents.dart';
import 'package:game_test_full/models/suroo.dart';

class AppBarTitleWidget extends StatelessWidget {
  const AppBarTitleWidget({
    Key? key,
    required this.item,
    required this.tuuraJooptor,
    required this.kataJooptor,
  }) : super(key: key);
  final Continents item;
  final int tuuraJooptor;
  final int kataJooptor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Row(
              children: [
                Text(
                  '$tuuraJooptor',
                  style: const TextStyle(
                    color: AppColors.green,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    '${asiaQuestions.length}',
                    style: const TextStyle(fontSize: 22),
                  ),
                ),
                Text(
                  '$kataJooptor',
                  style: const TextStyle(
                    color: AppColors.red,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(item.name, style: const TextStyle(fontSize: 22)),
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
