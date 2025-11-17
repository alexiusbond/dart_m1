enum Color { brown, black, white }

class Animal {
  static int _animalCount = 0;

  static void showAnimalCount() {
    print('Total Animals: $_animalCount');
  }

  static void resetAnimalCount() {
    _animalCount = 0;
    showAnimalCount();
  }

  String name;
  int age;

  Animal(this.name, this.age) {
    _animalCount++;
  }

  void displayInfo() {
    print('Animal Name: $name, Age: $age');
  }
}

class Parrot extends Animal {
  Parrot(String name, int age) : super(name, age);

  void fly() {
    print('$name is flying!');
  }
}

class Cat extends Animal {
  Color color;

  Cat(String name, int age, this.color) : super(name, age);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Color: ${color.name}');
  }

  void meow() {
    print('$name says Meow!');
  }
}

class Dog extends Animal {
  String breed;

  Dog(super.name, super.age, this.breed);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Breed: $breed');
  }

  void bark() {
    print('$name says Woof!');
  }
}

class FightingDog extends Dog {
  int wins;
  FightingDog(super.name, super.age, super.breed, this.wins);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Wins: $wins');
  }

  void fight() {
    print('$name is fighting!');
  }
}
