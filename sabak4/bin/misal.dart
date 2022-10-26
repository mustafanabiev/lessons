void main() {
  List sandar = [0, 1, 2.5, 3, 4, 5.5, 10, 12, 7, 25.6, 225, 4.9, 113];

  var jupSandar = [];
  var takSandar = [];
  var bolchokSandar = [];

  for (num san in sandar) {
    // 1) san = 0
    // 2) san = 1
    // 3) san = 2.5
    final item = san % 2;
    // 1) (item = san % 2) => item = 0
    // 2) (item = san % 2) => item = 1
    // 3) (item = san % 2) => item = 0.5

    // 1) (0 == 0) => true
    // 2) (1 == 0) => false
    // 3) (0.5 == 0) => false
    if (item == 0) {
      // 1) jupSandar.add(0);
      jupSandar.add(san);
    }
    // 2) (1 == 1) => true
    // 3) (0.5 = 1) => false
    else if (item == 1) {
      // 2) takSandar.add(1);
      takSandar.add(san);
    } else {
      // 3) bolchokSandar.add(san);
      bolchokSandar.add(san);
    }
  }

  print(sandar);

  print('jupSandar: $jupSandar');
  print('takSandar: $takSandar');
  print('bolchokSandar: $bolchokSandar');
}

/**
 1) bir list
 2) sandar
 3) bolup jazaily
 4) jup , tak , bolchok
 
 */