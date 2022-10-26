import 'mobile_developer.dart';
import 'web_developer.dart';

void main() {
  String text = 'Salam';

  int san = 20;

  MobileDeveloper m1 = MobileDeveloper(
    name: 'Aizada',
    jash: 18,
    framework: 'Flutter',
  );

  WebDeveloper w1 = WebDeveloper(
    name: 'Ermek',
    jash: 16,
    framework: 'HTML',
  );

  m1.taanysh();
  m1.kodJazuu();

  w1.taanysh();
  w1.kodJazuu();
}
