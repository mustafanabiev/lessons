class Suroo {
  const Suroo({
    required this.text,
    required this.image,
    required this.jooptor,
  });

  final String text;
  final String image;
  final List<Joop> jooptor;
}

class Joop {
  const Joop({
    required this.text,
    this.isTrue = false,
  });

  final String text;
  final bool isTrue;
}

List<Suroo> asiaQuestions = [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10];

List<Suroo> europeQuestions = [s7, s8, s9, s10, s3, s4, s5, s6, s1, s2];

List<Suroo> africaQuestions = [s3, s4, s9, s10, s7, s8, s5, s2, s6, s1];

const s1 = Suroo(
  text: 'Ашхабат',
  image: 'asia/ashhabad.jpeg',
  jooptor: [
    Joop(text: 'Кыргызстан'),
    Joop(text: 'Керея'),
    Joop(text: 'Афганизстан'),
    Joop(text: 'Туркмонстан', isTrue: true),
  ],
);

const s2 = Suroo(
  text: 'Астана',
  image: 'asia/astana.jpeg',
  jooptor: [
    Joop(text: 'Казакстан', isTrue: true),
    Joop(text: 'Янопия'),
    Joop(text: 'Россия'),
    Joop(text: 'Туркмонстан'),
  ],
);

const s3 = Suroo(
  text: 'Бишкек',
  image: 'asia/bishkek.jpeg',
  jooptor: [
    Joop(text: 'Кыргызстан', isTrue: true),
    Joop(text: 'Сингапур'),
    Joop(text: 'Малазия'),
    Joop(text: 'Тайвань'),
  ],
);

const s4 = Suroo(
  text: 'Душанбе.jpeg',
  image: 'asia/dushanbe',
  jooptor: [
    Joop(text: 'Кыргызстан'),
    Joop(text: 'Керея'),
    Joop(text: 'Афганизстан'),
    Joop(text: 'Тажикстан', isTrue: true),
  ],
);

const s5 = Suroo(
  text: 'Ню-Дели',
  image: 'asia/new-delhi.jpeg',
  jooptor: [
    Joop(text: 'Иран'),
    Joop(text: 'Сирия'),
    Joop(text: 'Индия', isTrue: true),
    Joop(text: 'Ирак'),
  ],
);

const s6 = Suroo(
  text: 'Пекин',
  image: 'asia/pekin.jpeg',
  jooptor: [
    Joop(text: 'Кытай', isTrue: true),
    Joop(text: 'Керея'),
    Joop(text: 'Япония'),
    Joop(text: 'Филипны'),
  ],
);

const s7 = Suroo(
  text: 'Сеул',
  image: 'asia/seul.jpeg',
  jooptor: [
    Joop(text: 'Тайланд'),
    Joop(text: 'Керея', isTrue: true),
    Joop(text: 'Индонезия'),
    Joop(text: 'Ветнам'),
  ],
);

const s8 = Suroo(
  text: 'Ташкент',
  image: 'asia/tashkent.jpeg',
  jooptor: [
    Joop(text: 'Кыргызстан'),
    Joop(text: 'Россия'),
    Joop(text: 'Озбекстан', isTrue: true),
    Joop(text: 'Азербайжан'),
  ],
);

const s9 = Suroo(
  text: 'Токио',
  image: 'asia/tokyo.jpeg',
  jooptor: [
    Joop(text: 'Япония', isTrue: true),
    Joop(text: 'Конго'),
    Joop(text: 'Сингапур'),
    Joop(text: 'Миянма'),
  ],
);

const s10 = Suroo(
  text: 'Улан-Батор',
  image: 'asia/ulan_bator.jpeg',
  jooptor: [
    Joop(text: 'Япония'),
    Joop(text: 'Манголия', isTrue: true),
    Joop(text: 'Кытай'),
    Joop(text: 'Кыргызстан'),
  ],
);
