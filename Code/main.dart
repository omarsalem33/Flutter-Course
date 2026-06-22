import 'Class.dart';

import 'dart:io';

void main() {
  int? age = int.tryParse(stdin.readLineSync()!);
  double? height = double.tryParse(stdin.readLineSync()!);
  String? name = stdin.readLineSync();
  bool? isStudent = stdin.readLineSync()!.toLowerCase() == 'true';

  print(age); // Output: null
  print("Name: $name"); // Output: null
  print("Height: $height"); // Output: null
  print("Is Student: $isStudent"); // Output: null
}




























// ReturnType functionName(ParameterType parameterName) {
//   // function body
//   return value;
// }