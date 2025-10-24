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

  // Операции со строками
  String sampleString = "  Hello Dart!  ";
  print(sampleString.length); // Длина строки
  print(sampleString.toUpperCase()); // Преобразование в верхний регистр
  print(sampleString.toLowerCase()); // Преобразование в нижний регистр
  print(sampleString.trim()); // Удаление пробелов в начале и конце
  print(sampleString.contains("Dart")); // Проверка наличия подстроки
  print(sampleString.replaceAll("Dart", "Flutter")); // Замена подстроки

  // Преобразование типов
  String ageString = "30";
  int ageInt = int.parse(ageString); // Преобразование строки в целое число
  print(ageInt + 5);

  double heightDouble = 1.85;
  String heightString = heightDouble
      .toString(); // Преобразование числа с плавающей точкой в строку
  print("Height: " + heightString);

  /*String helloString = "Hello";
  int helloInt = int.parse(
    helloString,
  ); // Ошибка: Невозможно преобразовать строку в число
  */

  int number = 9;
  double numberDouble = number
      .toDouble(); // Преобразование целого числа в число с плавающей точкой
  double digit = 9.99;
  int digitint = digit
      .toInt(); // Преобразование числа с плавающей точкой в целое число
  print('$number, $numberDouble, $digit, $digitint');

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

  // Операторы сравнения
  int y = 15;
  print(x == y); // Равно
  print(x != y); // Не равно
  print(x > y); // Больше
  print(x < y); // Меньше
  print(x >= y); // Больше или равно
  print(x <= y); // Меньше или равно
}
