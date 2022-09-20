import 'dart:io';

// Uma agência de uma cidade do interior, tem, no máximo, 10.000 clientes. Crie
// um algoritmo que possa entrar com número da conta, nome e saldo de cada cliente.
// O programa deverá imprimir todas as contas, os respectivos saldos e uma das
// mensagens: POSITIVO / NEGATIVO. A digitação acaba quando se digita -999
// para o número da conta OU quando chegar ao 10.000. Ao final, deverá ser
// impresso o total de clientes com saldo negativo, o total de clientes da agência e o
// saldo da agência.
void main(List<String> args) {
  double saldo_agencia = 0;
  int total_clientes = 0;
  int negativos = 0;
  int positivos = 0;
  while (total_clientes < 10000) {
    print("Entre com o numero da conta ou -999 para sair");
    int numero = int.parse(stdin.readLineSync()!);
    if (numero == -999) {
      break;
    }
    print("entre com o nome da conta");
    String? nome = stdin.readLineSync();
    print("entre com o saldo");
    double saldo = double.parse(stdin.readLineSync()!);
    print(saldo);
    print(saldo < 0);
    if (saldo < 0) {
      negativos++;
      print("negativos: $negativos");
    } else {
      positivos++;
      print("posi $positivos");
    }
    saldo_agencia += saldo;
    total_clientes++;
  }
  print("saldo da agencia: $saldo_agencia");
  print("total de clientes: $total_clientes");
  print("numero de clientes negativados: $negativos");
  print("numero de clientes posivados: $positivos");
}





// void main() {
//   var conta = 0;
//   var nome = '';
//   var saldo = 0.0;
//   var total = 0;
//   var totalSaldo = 0.0;
//   var totalNegativo = 0;

//   while (total < 10000) {
//     print('Digite o número da conta ou -999 para sair');
//     conta = int.parse(stdin.readLineSync()!);
//     if (conta == -999) {
//       break;
//     }
//     print('Digite o nome do cliente');
//     nome = stdin.readLineSync()!;
//     print('Digite o saldo do cliente');
//     saldo = double.parse(stdin.readLineSync()!);
//     totalSaldo += saldo;
//     if (saldo < 0) {
//       totalNegativo++;
//     }
//     total++;
//   }
//   print('Total de clientes: $total');
//   print('Total de clientes com saldo negativo: $totalNegativo');
//   print('Saldo da agência: $totalSaldo');
// }
