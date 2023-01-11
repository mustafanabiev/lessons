void main() async {
  // 1
  salamBeruu();

  // 2
  final text = await getName();
  print(text);

  // 3
  // koshtoshuu();
}

Future<String> getName() async {
  await Future.delayed(Duration(seconds: 10));
  return 'Asan';
}

// async: ubakit ala turgan funksia
// await:

// Mers
// 5000 km
void salamBeruu() async {
  await Future.delayed(Duration(seconds: 5));
  print('Salam');
}

// BMW
// 1
void koshtoshuu() {
  print('Kosh bol');
}
