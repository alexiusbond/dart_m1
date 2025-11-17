import 'person.dart';

class Car {
  String color;
  final String model;
  final int year;
  Person? owner;

  // Конструктор
  // Car(String theColor, String theModel, int theYear) {
  //   this.color = theColor;
  //   this.model = theModel;
  //   this.year = theYear;
  // }

  // Конструктор с инициализирующим списком
  // Car(String color, String model, int year)
  //     : this.color = color,
  //       this.model = model,
  //       this.year = year;

  // Конструктор с параметрами, присваивающимися напрямую
  Car(this.color, this.model, this.year);

  // Именованные конструкторы
  Car.red(this.model, this.year) : color = 'Red';
  Car.withOwner(this.color, this.model, this.year, this.owner);

  // Метод для вождения машины
  void drive() {
    print('Car $model of $color color is driving.');
  }

  // Метод для перекраски машины
  void repaint(String newColor) {
    color = newColor;
    print('Car $model has been repainted to $color.');
  }

  // Метод для подачи сигнала
  void honk(int numberOfHonks) {
    for (int i = 0; i < numberOfHonks; i++) {
      print('Beep! Beep!');
    }
  }

  // Метод для отображения информации о машине
  void displayInfo() {
    print('Car Model: $model, Color: $color, Year: $year');
  }
}
