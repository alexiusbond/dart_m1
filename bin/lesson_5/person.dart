import 'bank_account.dart';

class Person {
  final String _name;
  int _age;
  BankAccount? _bankAccount;

  // Конструктор
  Person({required String name, required int age}) : _name = name, _age = age {
    _wasBorn();
  }

  // Именованный конструктор с банковским счетом
  Person.withBankAccount({
    required String name,
    required int age,
    required BankAccount bankAccount,
  }) : _name = name,
       _age = age,
       _bankAccount = bankAccount {
    _wasBorn();
  }

  void _wasBorn() {
    print('$_name was born in ${2025 - _age}');
  }

  // Сеттер для возраста с проверкой
  set age(int value) {
    if (value >= 0) {
      _age = value;
    } else {
      print('Age cannot be negative');
    }
  }

  // Геттер для возраста
  int get age => _age;

  // Геттер для имени
  String get name => _name;

  // Метод для вычисления года рождения
  int calculateYearOfBirth() {
    return 2025 - _age;
  }

  // Метод для отображения информации о человеке
  void displayInfo() {
    print('Name: $_name, Age: $_age, Year of Birth: ${calculateYearOfBirth()}');
  }

  set bankAccount(BankAccount account) {
    _bankAccount = account;
  }

  BankAccount? get bankAccount {
    return _bankAccount;
  }
}
