// Классы и объекты
// Поля, Конструкторы, Методы
// Ключевое слово this
// Именованные конструкторы
// Инкапсуляция
// Композиция (Composition)
// Повторение комманд GIT

import 'package:dart_m1/bank_account.dart';
import 'package:dart_m1/person.dart';

void main() {
  // Создание объекта с использованием основного конструктора
  BankAccount account1 = BankAccount('123456');
  account1.displayInfo();
  account1.deposit(500.0);
  account1.withdraw(200.0);
  account1.displayInfo();
  account1.withdraw(2000.0); // Попытка снять больше, чем есть на счете

  // Создание объекта с использованием именованного конструктора
  final account2 = BankAccount.withInitialDeposit('654321', 1500.0);
  account2.displayInfo();

  // Создание объекта Person
  Person myFriend = Person(name: 'Alice', age: 30);
  myFriend.displayInfo();
  myFriend.age = -31; // Некорректное значение возраста, проверка в сеттере
  myFriend.displayInfo();
  // myFriend.wasBorn(); // Ошибка: метод недоступен из-за инкапсуляции

  // Связывание банковского счета с человеком
  myFriend.bankAccount = account2;
  print('Bank Account Info for ${myFriend.name}:');
  myFriend.bankAccount!.displayInfo();

  // Создание объекта Person с банковским счетом через именованный конструктор
  Person me = Person.withBankAccount(
    name: 'Bob',
    age: 25,
    bankAccount: BankAccount.withInitialDeposit('112233', 3000.0),
  );    
    me.displayInfo();
    print('Bank Account Info for ${me.name}:');
    me.bankAccount!.displayInfo();
}
