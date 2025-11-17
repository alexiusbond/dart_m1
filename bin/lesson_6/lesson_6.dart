import 'utilities.dart';
import 'animals.dart';

void main() {
  print('\n--- SPARROW ---');
  Parrot parrot = Parrot('Polly', 2);
  parrot.displayInfo();
  parrot.fly();

  print('\n--- CAT ---');
  Cat cat = Cat('Whiskers', 3, Color.brown);
  cat.displayInfo();
  cat.meow();

  print('\n--- DOG ---');
  Dog dog = Dog('Buddy', 4, 'Golden Retriever');
  dog.displayInfo();
  dog.bark();

  print('\n--- FIGHTING DOG ---');
  FightingDog fightingDog = FightingDog('Max', 5, 'Bulldog', 10);
  fightingDog.displayInfo();
  fightingDog.bark();
  // fightingDog.meow(); // Ошибка: метод недоступен для FightingDog
  fightingDog.fight();

  print('\n --- CHECKS ---');
  if (fightingDog.breed == 'Bulldog') {
    print('This dog is dangerous!');
  }

  if (cat.color == Color.brown) {
    print('This cat is beautiful!');
  }

  print('\n--- ANIMAL COUNT ---');
  Animal.showAnimalCount();
  Animal.resetAnimalCount();

  print('\n--- UTILITIES ---');
  print(Converter.celsiusToFahrenheit(25));
  print(Converter.fahrenheitToCelsius(77));
  print(Calculator.add(10, 5));
  print(Calculator.subtract(10, 5));
}
