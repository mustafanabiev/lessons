import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_test_full/models/continents.dart';

class ContainentsCard extends StatelessWidget {
  const ContainentsCard({
    Key? key,
    required this.item,
    required this.onTap,
  }) : super(key: key);

  final Continents item;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            const SizedBox(height: 5),
            Text(
              item.name,
              style: const TextStyle(fontSize: 22),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icons/${item.icon}.svg',
                  color: item.color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
