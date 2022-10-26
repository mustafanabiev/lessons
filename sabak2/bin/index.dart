import 'dart:io';

void main(List<String> args) {
  num a = num.parse(stdin.readLineSync()!);
  num b = num.parse(stdin.readLineSync()!);
  num c = num.parse(stdin.readLineSync()!);

  if (a > b && a > c) {
    print('Чон саны $a');
  } else if (b > a && b > c) {
    print('Чон саны $b');
  } else {
    print('Чон саны $c');
  }
}
