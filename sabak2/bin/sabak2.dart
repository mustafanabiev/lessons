import 'dart:convert';

void main() {
  print('Salam Kurs10'.runtimeType);
  print(10.runtimeType);
  print(5.6.runtimeType);
  print(true.runtimeType);

  int san = 20;

  // 1
  Function birFunksiaBarabarMenen = () {
    print('Salam Kyrgyz');
  };
  //
  birFunksiaBarabarMenen.call();

  //! 2
  birFunksia();

  //
  torttuEkigeKoboyt();

  //                  10
  int jiyintik = beshtiEkigeKoboyt();
  print('jiyintik');
  print(jiyintik+5);
}

//!2
void birFunksia() {
  print('Hello World');
}

void torttuEkigeKoboyt() {
  int resultat = 4 * 2;
  print(resultat);
}

int beshtiEkigeKoboyt() {
  int resultat = 5 * 2;
  print('resultat');
  print(resultat);
  return resultat;
}
