import 'car.dart';
import 'person.dart';

void main() {
  // Создание объекта с использованием основного конструктора
  Car myCar = Car('Blue', 'Toyota', 2020);
  print(myCar);
  myCar.displayInfo();
  // myCar.color = 'Green'; // Прямое изменение свойства color
  myCar.repaint('Green'); // Изменение цвета через метод
  myCar.drive();

  // Создание объекта с использованием именованного конструктора
  final friendsCar = Car.redHonda(2018);
  friendsCar.displayInfo();
  friendsCar.honk(3);
  friendsCar.drive();

  // Создание объекта Person
  Person myFriend = Person(name: 'Alice', age: 30);
  myFriend.displayInfo();
  myFriend.age = -31; // Некорректное значение возраста, проверка в сеттере
  myFriend.displayInfo();
  // myFriend.wasBorn(); // Ошибка: метод недоступен из-за инкапсуляции

  // Связывание машины с владельцем
  friendsCar.owner = myFriend;
  print('Owner of friendsCar: ${friendsCar.owner?.name}');


  // Создание объекта с использованием именованного конструктора с владельцем
  Car dadsCar = Car.withOwner('Black', 'Ford', 2015, Person(name: 'Bob', age: 45));
  dadsCar.displayInfo();
}
