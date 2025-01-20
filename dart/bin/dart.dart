import 'package:dart/dart.dart' as dart;

void main(List<String> arguments) {
  print('Hello world: ${dart.calculate()}!');

  print('${add(1, 2)}');
}

// 기본 함수
int add (int a, int b) {
  return a + b;
}

// 익명 함수
// var add = (int a, int b) {
//   return a + b;
// };

// 람다식
// add(int a, int b) => a + b;
