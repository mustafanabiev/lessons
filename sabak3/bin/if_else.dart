void main() {
  jupJeTak(15.2);
}

void jupJeTak(num san) {
  num res = san % 2;
  if (res == 0) {
    print('$san sany jup san');
  } else if (res == 1) {
    print('$san sany tak san');
  } else {
    print('$san sany bolchok san');
  }
  
  print('Salam Kyrgyzstan');
}

/**
 бир функция . Сырттан бир сан алсын. Алсандын жуп же так экендигин 
 аныктап берсин.
 */
