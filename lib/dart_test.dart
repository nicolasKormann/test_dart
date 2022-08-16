import 'dart:io';

int sum() {
  stdout.write('Escolha um valor: ');
  int num = int.parse(stdin.readLineSync()!).abs();
  List<int> divisibilis = [];

  for (int i = num - 1; i > 0; i--) {
    if (i % 3 == 0 || i % 5 == 0) {
      divisibilis.add(i);
    }
  }
  int sum = divisibilis.reduce((value, element) => value += element);
  return sum;
}
