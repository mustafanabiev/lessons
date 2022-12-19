class Quiz {
  const Quiz(this.question, this.answer);

  final String question;
  final bool answer;
}

const q1 = Quiz('Кыргызстанда 7 область барбы ?', true);
const q2 = Quiz('Франция чемпион болобу ?', true);
const q3 = Quiz('Евро Даниянын акча бирдигиби ?', false);
const q4 = Quiz('Марокко чемпион болобу ?', true);
const q5 = Quiz('Кенгуру Австралиянын улуттук жаныбырыбы ?', true);
const q6 = Quiz('Шанхай Кытайдын борбор шаарыбы ?', false);
const q7 = Quiz('Нил дуйнодогу эн узун дарыябы ?', true);
const q8 = Quiz('Чынгыз Айтматов мигалимби ?', false);
const q9 = Quiz('Флаттер менен операциондук система жазса болобу?', false);

// generik ===> <> Belgiluu bir tip beruu uchun koldonulat
const quizzes = <Quiz>[q1, q2, q3, q4, q5, q6, q7, q8, q9];
