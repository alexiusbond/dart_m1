void main() {
  // Цикл for
  for (var i = 1; i <= 5; i++) {
    print('Step $i');
  }

  // таблица умножения числа 7
  print('------------- Multiplication Table 7 -------------');
  int number = 7;
  for (var i = 1; i <= 10; i++) {
    print('$number x $i = ${number * i}');
  }

  // таблица умножения числа 5 в обратном порядке
  print('------------- Multiplication Table 5 DESC -------------');
  number = 5;
  for (var i = 10; i >= 1; i--) {
    print('$number x $i = ${number * i}');
  }

  // таблица умножения числа 9 в обратном порядке только на четные числа
  print('------------- Multiplication Table 9 DESC for Even Numbers -------------');
  number = 9;
  for (var i = 10; i >= 1; i -= 2) {
    print('$number x $i = ${number * i}');
  }

  // Цикл while
  print('------------- While Loop -------------');
  int count = 0;
  while (count <= 5) {
    print('Count is $count');
    count++;
    print('Square is ${count * count}');
  }

  var myStr = '#';
  while (myStr.length <= 7) {
    print(myStr);
    myStr += '#';
  }

  // Коллекции List - список
  // упорядоченная коллекция элементов, доступ по индексу, может содержать дубликаты, изменяемый размер
  print('------------- List Collection -------------');
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  print(fruits);
  print(
    'I like ${fruits[0]} and ${fruits[2]}',
  ); // Доступ к элементам по индексу
  fruits[1] = 'Grapes'; // Изменение элемента по индексу
  print(fruits);
  // fruits[10] = 'Pineapple'; // Ошибка: индекс вне диапазона
  fruits.add('Mango'); // Добавление элемента в конец списка
  print(fruits);
  fruits.removeAt(0); // Удаление элемента по индексу
  print(fruits);
  print('Fruits count: ${fruits.length}'); // Количество элементов в списке
  fruits.insert(1, 'Peach'); // Вставка элемента по индексу
  print(fruits);
  fruits.removeLast(); // Удаление последнего элемента
  print(fruits);
  fruits.remove('Orange'); // Удаление элемента по значению
  print(fruits);

  // Коллекции Map - словарь
  // неупорядоченная коллекция пар ключ-значение, ключи уникальны

  print('------------- Map Collection -------------');
  Map<String, int> ages = {'Alice': 30, 'Bob': 25, 'Charlie': 35};
  print(ages);
  print('Alice is ${ages['Alice']} years old.'); // Доступ по ключу
  ages['Bob'] = 26; // Изменение значения по ключу
  print(ages);
  ages['David'] = 28; // Добавление новой пары ключ-значение
  print(ages);
  ages.remove('Charlie'); // Удаление пары по ключу
  print(ages);
  print('Total people: ${ages.length}'); // Количество пар в словаре
  print('Keys: ${ages.keys}'); // Получение всех ключей
  print('Values: ${ages.values}'); // Получение всех значений

  // Итерация по парам ключ-значение
  ages.forEach((key, value) {
    print('$key is $value years old.');
  });

  // Коллекции Set - множество
  // неупорядоченная коллекция уникальных элементов
  print('------------- Set Collection -------------');
  Set<String> colors = {'Red', 'Green', 'Blue'};
  print(colors);
  colors.add('Yellow'); // Добавление элемента
  print(colors);
  colors.add('Red'); // Попытка добавить дубликат (игнорируется)
  print(colors);
  colors.remove('Green'); // Удаление элемента
  print(colors);
  print('Colors count: ${colors.length}'); // Количество элементов в множестве

  // Итерация по элементам множества
  for (var color in colors) {
    // цикл for-in для коллекции Set
    print('Color: $color');
  }

  // Цикл for-in для коллекции List и операторы break, continue
  print('------------- For-In Loop with List -------------');
  List<int> numbers = [33, -45, 9, 78, -21, 57];
  for (var num in numbers) {
    if (num < 0) {
      continue; // пропустить отрицательные числа
    }
    if (num > 50) {
      break; // остановить цикл, если число больше 50
    }
    print('Number: $num');
  }

  List<String> robots = [];
  for (var i = 1; i <= 10; i++) {
    robots.add('Robot_00$i');
  }
  print(robots);
}
