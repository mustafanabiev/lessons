void main() {
  // onGoCheyinSana();
  // onGoCheyinSanaListMenen();

  int san = 0;
  while (san <= 10) {
    print(san);
    san++;
  }
}

void onGoCheyinSana() {
  for (int san = 0; san < 10; san++) {
    print(san);
  }
}

void onGoCheyinSanaListMenen() {
  List sandar = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  for (int item in sandar) {
    // 1) item = 0
    // 2) item = 1
    // 3) item = 2
    // 4) item = 3
    // 10) item = 25
    print(item);
  }

  List textter = ['salam', 'bishkek', 'osh', 'batken'];
  print(textter);
  for (String text in textter) {
    print(text);
  }
}
