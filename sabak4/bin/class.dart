// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  String text = 'Salam';
  int san = 10;

  Olko kyrgyzstan = Olko(
    kalk: 7000000,
    borborShaar: 'Bishkek',
    tili: 'Kg',
    aiant: 200000,
    shaarlar: [
      'Bishkek',
      'Osh',
      'Jalal-Abad',
    ],
    uluttar: [
      'Kyrgyz',
      'Orus',
      'Ozbek',
    ],
  );

  print('kyrgyzstan.kalk: ${kyrgyzstan.kalk}');
  print('kyrgyzstan.borborShaar: ${kyrgyzstan.borborShaar}');
  print('kyrgyzstan.tili: ${kyrgyzstan.tili}');
  print('kyrgyzstan.aiant: ${kyrgyzstan.aiant}');
  print('kyrgyzstan.shaarlar: ${kyrgyzstan.shaarlar}');
  print('kyrgyzstan.uluttar: ${kyrgyzstan.uluttar}');

  // kyrgyzstan.kalk = 7000000;
  // print('kyrgyzstan.kalk: ${kyrgyzstan.kalk}');

  // kyrgyzstan.borborShaar = 'Bishkek';
  // print('kyrgyzstan.borborShaar: ${kyrgyzstan.borborShaar}');

  // kyrgyzstan.tili = 'Kg';
  // print('kyrgyzstan.tili: ${kyrgyzstan.tili}');

  // kyrgyzstan.aiant = 200000;
  // print('kyrgyzstan.aiant: ${kyrgyzstan.aiant}');

  // kyrgyzstan.shaarlar = [
  //   'Bishkek',
  //   'Osh',
  //   'Jalal-Abad',
  //   'Talas',
  //   'Naryn',
  //   'Toktogul',
  //   'KyzylKia'
  // ];
  // print('kyrgyzstan.shaarlar: ${kyrgyzstan.shaarlar}');

  // kyrgyzstan.uluttar = [
  //   'Kyrgyz',
  //   'Orus',
  //   'Ozbek',
  //   'Turk',
  //   'Africa',
  //   'Indus',
  //   'Kytai',
  //   'Pakistan'
  // ];
  // print('kyrgyzstan.uluttar: ${kyrgyzstan.uluttar}');
}

// class = Object

int san = 10;

class Olko {
  int kalk;
  String borborShaar;
  String tili;
  int aiant;
  List shaarlar;
  List uluttar;

  Olko({
    required this.kalk,
    required this.borborShaar,
    required this.tili,
    required this.aiant,
    required this.shaarlar,
    required this.uluttar,
  });
}
