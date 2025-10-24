import 'dart:io';

void main() {
  // Особенности системы типов Dart (var, final, const, dynamic)

  // Вывод типа данных переменной с помощью ключевого слова 'var'
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

  const x = 1;
  const y = 2;
  const sum = x + y; // Можно выполнять операции с const

  dynamic variable = 'I am dynamic'; // Тип данных может изменяться
  print(variable);
  variable = 100; // Теперь это int
  print(variable);

  // var -> значение может изменяться и тип определяется автоматически
  // final -> значение не может изменяться после инициализации, тип можно указать
  // const -> значение не может изменяться и должно быть известно на этапе компиляции
  // dynamic -> значение и тип могут изменяться в процессе выполнения программы

  // Условные конструкции if, if-else, if - else-if - else

  var temperature = 25;
  var isRaining = false;

  if (temperature > 20) {
    // Условие истинно
    const parkName = 'Central Park';
    print('The temperature is $temperature°C. Let\'s go to $parkName!');
  }

  if (isRaining) {
    // Условие ложно
    print('It\'s raining. Don\'t forget your umbrella!');
  }

  if (temperature > 30) {
    // Условие ложно
    print('Go swimming!');
  } else {
    // Альтернативный блок кода
    print('Go to the Gym!');
  }

  if (temperature == 25) {
    // Условие истинно
    print('It\'s a perfect day for a walk!');
  } else {
    print('Better stay indoors!');
  }

  /* else {
    print('Do something else!');
  } */ // Ошибка: Нельзя использовать else без if

  if (temperature > 35) {
    print('The weather is hot!');
  } else if (temperature > 20) {
    // Условие истинно, выполняется этот блок, остальные игнорируются
    print('The weather is warm!');
  } else if (temperature > 10) {
    print('The weather is cool!');
  } else if (temperature > 0) {
    print('The weather is cold!');
  } else {
    print('The weather is freezing!');
  }

  // Булева алгебра (and, or, not)
  const isWeekend = false;
  isRaining = true;
  temperature = 12;

  if (isRaining && temperature < 15) {
    // Оператор AND - истина, если оба условия истинны
    print('Stay home and read a book.');
  }

  if (isWeekend && isRaining) {
    // Оператор AND - ложь, так как isWeekend = false
    print('It\'s weekend and it\'s raining. Perfect time for a movie!');
  }

  if (isWeekend || isRaining) {
    // Оператор OR - истина, если хотя бы одно условие истинно
    print('Either it\'s weekend or it\'s raining. Time to relax!');
  }

  if (temperature > 20 || isWeekend) {
    // Оператор OR - ложь, так как оба условия ложны
    print('Let\'s go for a picnic!');
  }

  if (temperature > 15 && temperature < 25 ||
      isWeekend ||
      isRaining && temperature < 10) {
    // false && true || false || true && false -> 0 * 1 + 0 + 1 * 0 -> 0 + 0 + 0 -> 0 (false)
    print('Great day for outdoor activities!');
  }

  /* if (isWeekend) {
  } else {
    print('Time to work!');
  } */

  if (!isWeekend) {
    // Оператор NOT - инвертирует значение булева выражения
    print('Time to work!');
  }

  if (isWeekend) {
    // условие ложно - весь блок игнорируется
    print('Go to shopping!');
    // вложенная условная конструкция
    if (temperature < 10) {
      print('Buy warm clothes!');
    } else {
      print('Buy some snacks!');
    }
  }

  // Тернарная условная конструкция
  temperature = 18;
  // Условие ? значение_если_истина : значение_если_ложь
  String weatherMessage = (temperature > 20)
      ? 'It\'s warm outside.'
      : 'It\'s cool outside.';
  print(weatherMessage);

  // Ввод информации из консоли (stdin)

  print('Enter a sign: +, -, *, or /:');
  // Запуск программы необходимо сделать из консоли, чтобы можно было ввести данные -> dart run bin/lesson_2.dart
  final String sign = stdin.readLineSync()!;
  const num1 = 10;
  const num2 = 5;

  // Режим отладки
  // Условная конструкция switch
  switch (sign) {
    case '+':
      print('Result: ${num1 + num2}');
      break;
    case '-':
      print('Result: ${num1 - num2}');
      break;
    case '*':
      print('Result: ${num1 * num2}');
      break;
    case '/':
      print('Result: ${num1 / num2}');
      break;
    default:
      print('Invalid sign entered.');
  }

  // Знакомство с GIT (init, add, commit, push)
}
