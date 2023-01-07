import 'package:flutter/material.dart';
import 'package:game_test_ui/constants/app_text.dart';

class Continents {
  const Continents({
    required this.name,
    required this.icon,
    required this.color,
  });

  final String name;
  final String icon;
  final Color color;
}

const afirica = Continents(
  name: AppText.africa,
  icon: 'africa',
  color: Color(0xFFFEEF35),
);

const asia = Continents(
  name: AppText.asia,
  icon: 'asia',
  color: Color(0xFFFE8181),
);

const australia = Continents(
  name: AppText.australia,
  icon: 'australia',
  color: Color(0xFF6BF783),
);

const europe = Continents(
  name: AppText.europe,
  icon: 'europe',
  color: Color(0xFF81A2FE),
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
