import 'animals.dart';
import 'transports.dart';
import 'interfaces.dart';
import 'mixins.dart';

void main() {
  List<Drawable> drawables = [
    Cat('Tom', 2),
    Parrot('Polly', 3),
    Car(),
    Plane(),
    Snake('Kaa', 8),
  ];

  for (var drawable in drawables) {
    drawObject(drawable);
    if (drawable is Animal) {
      drawable.makeSound();
    }

    if (drawable is Playable) {
      (drawable as Playable).play();
    }

    if (drawable is Jump) {
      (drawable as Jump).jump();
    }

    if (drawable is Fly) {
      (drawable as Fly).fly(drawable.runtimeType.toString());
    }
  }
}

void drawObject(Drawable drawable) {
  drawable.draw();
  print(drawable.draw3D('Wood'));
}
