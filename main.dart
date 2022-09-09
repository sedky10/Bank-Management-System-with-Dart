import 'dart:io';

import 'Banker.dart';
import 'Customer.dart';

main() {
  Customer client = Customer();
  Banker Employee = Banker();
  stdout.write('''Welcome to payoneer Bank System\n
    Are You Banker or A client ?''');
  String? role = stdin.readLineSync()!.toLowerCase();

  switch (role) {
    case 'banker':
      //banker path here

      Employee.employee();

      break;
    case 'client':
      //Client path here
      client.client();

      break;
    default:
      print('Wrong');
  }
}
