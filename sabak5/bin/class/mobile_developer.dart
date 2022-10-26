import 'developer.dart';

class MobileDeveloper extends Developer {
  MobileDeveloper({
    required super.name,
    required super.jash,
    required super.framework,
  });
}

// Eski versia

// class MobileDeveloper extends Developer {
//   String name; // property
//   int jash; // property
//   String framework; // property

//   MobileDeveloper({
//     required this.name,
//     required this.jash,
//     required this.framework,
//   }) : super(
//           name: name,
//           jash: jash,
//           framework: framework,
//         );
// }
