import 'dart:io';

import 'Person.dart';

class Banker extends Person {
  int? _salary;

  set Salary(int? value) => _salary = value;

  int? get Salary => _salary;

  employee() {
    print('please,Enter Your name');
     name = stdin.readLineSync()!.toLowerCase();
    print('Please,Enter Your Password');
    password = int.parse(stdin.readLineSync()!);
    

    print('Welcome Back Mr $name, Do You Want To Now Your Salary This Month?');

    String? ans = stdin.readLineSync()!.toLowerCase();

    switch (ans) {
      case 'yes':
        switch (name) {
          case 'mohamed':
          case 'muhamed':
            CalcSalary('manager', name);
            break;
          case 'mahmoud':
            CalcSalary('system engineer', name);
            break;
          case 'mustafa':
          case 'mostafa':
            CalcSalary('marketer', name);
            break;
          case 'ahmed':
            CalcSalary('accountant', name);
            break;
        }
        break;
      default:
        print('We can\'t help you here. Go back to your Board');
    }
  }

  CalcSalary(String? role, String? name1) {
    String? mainrole = role!.toLowerCase();
    switch (mainrole) {
      case 'manager':
        calac(15, name1);
        break;
      case 'marketer':
        calac(5, name1);
        break;
      case 'accountant':
        calac(8, name1);
        break;
      case 'system engineer':
        calac(12, name1);
        break;
      default:
        throw Exception('Wrong');
    }
  }

  calac(int? mainsalary, String? name2) async {
    print('How many times have you been away from work?');
    int? Absence = int.parse(stdin.readLineSync()!);
    print('How many times have you been late for work?');
    int? late = int.parse(stdin.readLineSync()!);
    print('How many overtime hours?');
    int? bonus = int.parse(stdin.readLineSync()!);
    Salary = (mainsalary! + (bonus - (Absence + late)));
    await fetch(name2, Salary);
    print('Keep going and Good Luck');
  }
}

Future fetch(String? name1, int? Salary1) {
  return Future.delayed(Duration(seconds: 3),
      () => stdout.write('ok Mr.$name1\nYour Salary is $Salary1 K Pound\n'));
}
