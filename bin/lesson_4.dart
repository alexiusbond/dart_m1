// Функции базовое понимание: без параметров, с параметрами, возвращаемые и невозвращаемые
// Именованные параметры функции, значения по умолчанию
// Функции продвинутое изучение: функция как тип данных, анонимные функции
// GIT (rm, status) и .gitignore
// Контрольная работа


void main() {
  // Функции базовое понимание: без параметров
  print('--- Functions Basic Understanding: No Parameters ---');
greet();

  // Функции с параметрами и возвращаемые значения
  print('--- Functions with Parameters and Return Values ---');
  int sumResult = add(5, 10);
  print('Sum: $sumResult');

  // Именованные параметры функции, значения по умолчанию
  print('--- Named Parameters and Default Values ---');
  String fullName = createFullName(firstName: 'John', lastName: 'Doe');
  print('Full Name: $fullName');
  String fullNameWithDefault = createFullName(firstName: 'Jane');
  print('Full Name with Default Last Name: $fullNameWithDefault');
}

void greet() {
  print('Hello from the greet function!');
}

int add(int a, int b) {
  return a + b;
}

String createFullName({required String firstName, String lastName = 'Smith'}) {
  return '$firstName $lastName';
}

