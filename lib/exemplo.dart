import 'dart:io';

// faça um programa que print uma lista de 0 a 100
// e depois print a lista de 100 a 0

void main() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  print(soma2(a, b).toString());
  soma2(34, 40);
}

int soma2(int a, int b) {
  // Para realizar uma soma
  var conteudo = a + b;
  return conteudo;
}
