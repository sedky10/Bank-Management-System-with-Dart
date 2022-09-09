import 'dart:io';

import 'Person.dart';

class Customer extends Person {
  int? _Value;
  client() {
    print('Have An Account? New Client ?');
    String? type = stdin.readLineSync()!.toLowerCase();
    switch (type) {
      case 'yes':
      case 'yes i have':
        oldAcc();
        break;
      case 'new':
      case 'new client':
        print('Do you want to open a bank account?');
        String? ans = stdin.readLineSync()!.toLowerCase();
        switch (ans) {
          case 'yes':
            NeWACC();
            break;
          case 'no':
            print('Continue As A Guest ?');
            String? Guest = stdin.readLineSync()!.toLowerCase();

            switch (Guest) {
              case 'yes':
                //Service
                print(
                    '''We will show you some of our services, we hope you like it.\nSaving funds while allowing depositors to withdraw these funds when needed.\nIssuance of check books, to enable money holders to pay bills and other types of payments.\nProvide personal loans, business loans and mortgage loans.\nIssuing credit cards and completing transactions, financial movements and related invoices.\nIssuance of a debit card to be used as a substitute for checks.\nAvailability of financial transactions through automated teller machines, or through branches.\nProviding wire transfers and electronic funds transfer between banks.\nFacilitating direct and deferred debt and credit requests.\\n Creat new Account?''');
                String? Acc = stdin.readLineSync()!.toLowerCase();

                switch (Acc) {
                  case 'yes':
                    NeWACC();
                    //new client here
                    break;
                  case 'no':
                    break;
                }
                break;
              case 'no':
                break;
              default:
                throw Exception('Wrong');
            }
        }
        break;
      default:
        throw Exception('Wrong');
    }
  }

  NeWACC() {
    print(
        'Welcome to payoneer Bank\nYou are in The Right Place,Please Fill In Your Details');
    print('What\'s Your Name?');
    name = stdin.readLineSync()!.toLowerCase();
    print('How old Are you ?');
    Age = int.parse(stdin.readLineSync()!);
    print('Your National Id is?');
    id = int.parse(stdin.readLineSync()!);
    print('What amount will you deposit??');
    balance = int.parse(stdin.readLineSync()!);
    print('Now Set A Strong Password To Your Account?');
    password = int.parse(stdin.readLineSync()!);
    stdout.write("""
    All done\n
    Your Account\n
    Name is $name\n
    Age is $age\n
    id is $id\n
    Your Current Balance is $Balance\\\n
    Your Money is Safe
        """);
  }

  oldAcc() {
    print('please,Enter Your name');
    name = stdin.readLineSync()!.toLowerCase();
    print('Please,Enter Your Password');
    password = int.parse(stdin.readLineSync()!);
    switch (name) {
      case "mohamed":
        print("""ok mr $name\n Your Balance is 3500\nYour Money is Safe 
""");

        break;
      case "mahmoud":
        print("""ok mr $name\n Your Balance is 2000\nYour Money is Safe 
""");

        break;

      default:
        throw Exception('Wrong name');
    }
  }

  set balance(int? value) {
    if (value! >= 1000) {
      _Value = value;
    } else
      throw Exception(
          'It sis not possible to open an account with less than 1000 pound');
  }

  int? get Balance => _Value;
}
