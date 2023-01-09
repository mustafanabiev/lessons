import 'package:flutter/material.dart';
import 'package:game_test_full/constants/app_text.dart';
import 'package:game_test_full/models/suroo.dart';

class Continents {
  const Continents({
    required this.name,
    required this.icon,
    required this.color,
    this.suroo,
  });

  final String name;
  final String icon;
  final Color color;
  final List<Suroo>? suroo;
}

final afirica = Continents(
  name: AppText.africa,
  icon: 'africa',
  color: const Color(0xFFFEEF35),
  suroo: africaQuestions,
);

final asia = Continents(
  name: AppText.asia,
  icon: 'asia',
  color: const Color(0xFFFE8181),
  suroo: asiaQuestions,
);

const australia = Continents(
  name: AppText.australia,
  icon: 'australia',
  color: Color(0xFF6BF783),
);

final europe = Continents(
  name: AppText.europe,
  icon: 'europe',
  color: const Color(0xFF81A2FE),
  suroo: europeQuestions,
);

const northAmerica = Continents(
  name: AppText.northAmerica,
  icon: 'north_america',
  color: Color(0xFFFEB100),
);

const southAmerica = Continents(
  name: AppText.southAmerica,
  icon: 'south_america',
  color: Color(0xFFE5AAE5),
);

List<Continents> continents = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  afirica,
  australia,
];
