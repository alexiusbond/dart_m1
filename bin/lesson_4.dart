// Функции базовое понимание: без параметров, с параметрами, возвращаемые и невозвращаемые
// Именованные параметры функций
// Область видимости переменных
// Анонимные функции
// Знакомство с GIT (init, add, commit, push)
// Контрольная работа

void main() {
  // Функции базовое понимание

  // вызов невозвращаемой функции без параметров
  print('--- Making Tea ---');
  print('BREAKFAST TIME:');
  makeTea();
  print('LUNCH TIME:');
  makeTea();
  print('DINNER TIME:');
  makeTea();

  // вызов невозвращаемой функции с параметрами
  print('--- Calculate Perimeter ---');
  calculatePerimeter(5.0, 3.0, 'Living Room');
  calculatePerimeter(4.0, 2.5, 'Bedroom');
  calculatePerimeter(3, 4.5, 'Kitchen');

  // вызов возвращаемой функции с параметрами
  print('--- Calculate Area ---');
  int livingRoomArea = calculateArea(5.0, 3.0);
  int bedroomArea = calculateArea(4.0, 2.5);
  int kitchenArea = calculateArea(3, 4.5);
  print('Living Room Area: $livingRoomArea sq.${getUnit()}');
  print('Bedroom Area: $bedroomArea sq.${getUnit()}');
  print('Kitchen Area: $kitchenArea sq.${getUnit()}');
  print(
    'TOTAL AREA: ${livingRoomArea + bedroomArea + kitchenArea} sq.${getUnit()}',
  );

  // вызов функции с именованными параметрами
  print('--- Calculate Salary ---');
  int mySalary = calculateSalary(base: 3000, bonus: 500, penalty: 200);
  int bossSalary = calculateSalary(base: 2500, bonus: 300);
  int colegueSalary = calculateSalary(base: 2800, penalty: 100);
  print('My Salary: \$$mySalary');
  print('Boss Salary: \$$bossSalary');
  print('Colegue Salary: \$$colegueSalary');

  // область видимости переменных
  print('--- Variable Scope Example ---');
  scopeExample(20);
  globalVariable = 15; // изменение глобальной переменной
  scopeExample(30);

  // Анонимная функция
  print('--- Anonymous Function Example ---');
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.forEach((n) {
    // Анонимная функция, переданная в метод forEach
    int squared = n * n;
    print('Number: $squared');
  });

  numbers.forEach((n) => print('Number doubled: ${n * 2}')); // Однострочная анонимная функция (стрелочная, =>)
}

void makeTea() {
  // невозвращаемая функция без параметров
  print("Boil water");
  print("Add tea leaves");
  print("Pour boiling water");
  print("Let it steep");
  print("Pour into a cup");
  print("Add milk or sugar to taste");
}

void calculatePerimeter(double length, double width, String roomName) {
  // невозвращаемая функция с параметрами
  double perimeter = 2 * (length + width);
  print('The perimeter of $roomName is $perimeter ${getUnit()}.');
}

int calculateArea(double length, double width) {
  // возвращаемая функция с параметрами
  int area = (length * width).round();
  return area;
}

String getUnit() {
  // возвращаемая функция без параметров
  return 'meters';
}

int calculateSalary({required int base, int bonus = 0, int penalty = 0}) {
  // именованные параметры с обязательным и необязательными параметрами по умолчанию
  return base + bonus - penalty;
}

// область видимости переменных

int globalVariable = 10; // глобальная переменная
void scopeExample(int paramVariable) {
  int localVariable = 5; // локальная переменная
  print('Global Variable: $globalVariable');
  print('Parameter Variable: $paramVariable');
  print('Local Variable: $localVariable');
  if (true) {
    int blockVariable = 3; // переменная блока
    print('Block Variable: $blockVariable');
  }
  // print(blockVariable); // Ошибка: blockVariable не видна здесь
}

// 
