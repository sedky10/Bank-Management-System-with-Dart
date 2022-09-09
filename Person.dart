abstract class Person {
  int? _age;
  int? _id;
  String? _name;
  int? _password;

  set Age(int? value) {
    if (value! >= 18) {
      _age = value;
    } else
      throw Exception('Sorry, Your Age Can\'t Be less than 18 Years old');
  }

  int? get age => _age;

  set id(int? value) {
    if (value == 14) {
      _id = value;
    } else if (value! < 14) {
      throw Exception("id can\'t be less than 14 numbers");
    } else if (value > 14) {
      throw Exception("id can\'t be more less 14 numbers");
    }
  }

  int? get id => _id;

  set name(String? value) => _name = value;
  String? get name => _name;

  set password(int? value) {
    if (value! >= 8) {
      _password = value;
    } else
      throw Exception('weak password');
  }

  int? get password => _password;
}
