void main() {
  String text = returnString();
  print(text);

  int san = returnInt();
  print(san + 500);

  bool batken = returnBool();
  print(batken);
}

void text() {
  print('Hello World');
}

String returnString() {
  return 'Kurs10';
}

int returnInt() {
  return 1000;
}

bool returnBool() {
  return true;
}
