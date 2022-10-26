import 'developer.dart';

// WebDeveloper child class (bala class)
// Developer parent class (ata class)
// extends muras aluu (genetikalyk muras)
// super method algan parametrdy atasyna otkorup beret

class WebDeveloper extends Developer {
  WebDeveloper({
    required super.name,
    required super.jash,
    required super.framework,
  });

  @override
  kodJazuu() {
    print('''
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>Пример веб-страницы</title>
 </head>
 <body>
  <h1>Заголовок</h1>
  <!-- Комментарий -->
  <p>Первый абзац.</p>
  <p>Второй абзац.</p>
 </body>
</html>''');
  }
}
