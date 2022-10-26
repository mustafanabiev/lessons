class Developer {
  String name; // property
  int jash; // property
  String framework; // property
  
  Developer({
    required this.name,
    required this.jash,
    required this.framework,
  });

  // method
  void taanysh() {
    print('menin atym $name jashym $jash koldongon technalogiam $framework');
  }

  // method
  void kodJazuu() {
    print('''
  String name;  property
  int jash;  property
  String framework;  property

   method
  void taanysh() {
    print('menin atym name jashym jash koldongon technalogiam framework');
  }
''');
  }
}
