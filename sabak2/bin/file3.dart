void main() {
  sandyEkigeKoboyt(10, 'Чыккан сан');
  tanyshuu('Asan', 30, 'Bishkek');
  tanyshuu2('Askat', jash: 20, jeri: 'Osh', ulutu: 'Kyrgyz');
}

String tanyshuu(String aty, [int? jash, String? jeri]) {
  print(
    'Menin atym $aty. Jashym $jash da. $jeri ushul jerden bolom',
  );
  return aty;
}

String tanyshuu2(String aty, {required int jash, String? jeri, String? ulutu}) {
  print(
    'Menin atym $aty. Jashym $jash da. $jeri ushul jerden bolom. Ulutum $ulutu',
  );
  return aty;
}

int sandyEkigeKoboyt(int san, String text) {
  int resultat = san * 2;

  // print(text);

  // print('text: resultat');
  // print('$text: resultat');
  // print('$text: $resultat');

  return resultat;
}
