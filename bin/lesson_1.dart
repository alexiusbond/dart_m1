// ignore_for_file: unused_local_variable, prefer_interpolation_to_compose_strings

// Введение, знакомство с IDE VS code
//(Форматирование кода Shift+Alt+F, Shift + Alt + ↓ — дублировать строку вниз, запуск программы)

void main() {
  // Вывод информации в консоль (print)
  print('Hello world!');
  print('Dart is awesome!');
  print(54);
  print(5.45);

  // Комментарии
  // Однострочный комментарий
  /* Многострочный
     комментарий */

  // Переменные и типы данных
  String myName = 'Jim'; // строковый тип данных
  int myAge = 25; // целочисленный тип данных
  double myHeight = 1.75; // тип данных с плавающей точкой
  bool isTeacher = true; // логический тип данных
  print(myName);
  print(myAge);
  print(myHeight);
  print(isTeacher);
  String myJob; // Создание переменной (объявление) - Значение по умолчанию null
  // print(myJob);
  myJob = "Dart Developer"; // Присвоение значения переменной (инициализация)
  int mySalary = 5000;
  print(myJob);
  print(mySalary);
  myJob = "Senior Dart Developer"; // Изменение значения переменной
  mySalary = mySalary + 2000;
  print(myJob);
  print(mySalary);

  // Регистрозависимость и уникальность имен переменных, camelCase, только буквы, цифры и _
  String myPetName1 = 'Buddy';
  String myPetName2 = 'Max';
  // String my pet name = 'Buddy'; // Ошибка: пробелы в имене переменной
  // String 1stPetName = 'Buddy'; // Ошибка: имя переменной не может начинаться с цифры
  // String my_pet_name = 'Buddy'; // Допустимо, но не принято в стиле Dart
  print(myPetName1);

  // Конкатенация и интерполяция строк
  print('My name is ' + myName + '. My job is ' + myJob + '.');
  print('My name is $myName. My job is $myJob. I am $myAge years old.');
  print('I born in 2025 - $myAge.');
  print('I born in ${2025 - myAge}. My salary is ${mySalary}USD.');

  // Экранирование строк
  print("Today I'm learning Dart programming language.");
  print('Today I\'m learning Dart programming language.');
  print("Today I'm learning Dart programming language.");

  // Многострочные строки
  String multiLineString = '''
  This is a multi-line string.
  It can span multiple lines.
  ''';
  print(multiLineString);

  // Строковые функции
  String sampleString = "  Hello Dart!  ";
  print(sampleString.length); // Длина строки
  print(sampleString.toUpperCase()); // Преобразование в верхний регистр
  print(sampleString.toLowerCase()); // Преобразование в нижний регистр
  print(sampleString.trim()); // Удаление пробелов в начале и конце
  print(sampleString.contains("Dart")); // Проверка наличия подстроки
  print(sampleString.replaceAll("Dart", "Flutter")); // Замена подстроки

  // Арифметические операторы
  print(1 + 4); // Сложение
  print(9 - 2); // Вычитание
  print(5 * 6); // Умножение
  print(8 / 2); // Деление
  print(7 ~/ 3); // Целочисленное деление
  print(7 % 3); // Остаток от деления

  print(5 + 3 * 4 / 2 - 1);
  print((5 + 3) * 4 / (2 - 1));

  int x = 10;
  print(x);
  x += 5; // x = x + 5
  print(x);
  print(x++); // Постфиксный инкремент
  print(++x); // Префиксный
  print(x);

  // Особенности системы типов Dart (var, final, const, dynamic)

  // Автоматическое определение типа с помощью ключевого слова 'var'
  var myVariable =
      'Hello, Dart!'; // Тип данных определяется автоматически -> String
  print(myVariable.toUpperCase());

  var number = 42; // Тип данных определяется автоматически -> int
  print(number + 8);
  // number = 'Five'; // Ошибка: Нельзя присвоить значение другого типа

  final String finalString = 'This is a final string.';
  // finalString = 'Trying to change'; // Ошибка: Нельзя изменить значение final - оно константно после инициализации

  final pi = 3.14; // Тип данных определяется автоматически -> double

  // Предпочтительнее использовать final чем var, если значение не будет изменяться

  const phrase =
      'Wellcome to Dart course!'; // Значение константы известно на этапе компиляции, но не в runtime
  // phrase = 'Trying to change'; // Ошибка: Нельзя изменить значение const
  final upperPhrase = phrase
      .toUpperCase(); // Можно использовать методы для final

  const a = 1;
  const b = 2;
  const sum = a + b; // Можно выполнять операции с const

  dynamic variable = 'I am dynamic'; // Тип данных может изменяться
  print(variable);
  variable = 100; // Теперь это int
  print(variable);

  // null safety (безопасность от null)
  String? city; //
  print(city); // Ошибка: переменная не инициализирована

  // var -> значение может изменяться и тип определяется автоматически
  // final -> значение не может изменяться после инициализации, тип можно указать
  // const -> значение не может изменяться и должно быть известно на этапе компиляции
  // dynamic -> значение и тип могут изменяться в процессе выполнения программы
}
