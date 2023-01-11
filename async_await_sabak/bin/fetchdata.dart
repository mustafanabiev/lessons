import 'package:dio/dio.dart';

void main() async {
  final response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
  print(response);
}
