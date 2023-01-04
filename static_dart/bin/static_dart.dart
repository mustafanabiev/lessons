void main() {
  final kyrgyzstan = Olko(name: 'Kyrgyzstan', oblast: 7);
  final ozbekstan = Olko(name: 'Kyrgyzstan', oblast: 7);
  final kazakstan = Olko(name: 'Kyrgyzstan', oblast: 7);

  print(kyrgyzstan.name);
  print(ozbekstan.oblast);
  print(kazakstan.oblast);

  print(Olko.kalky);
}

class Olko {
  const Olko({
    required this.name,
    required this.oblast,
  });
  final String name;
  final int oblast;

  static const String kalky = '7000000';
}
