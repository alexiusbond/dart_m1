class GameCharacter {
  String name;
  int _health;
  int damage;

  GameCharacter(this.name, this._health, this.damage);

  bool isAlive() {
    return health > 0;
  }

  int get health => _health;

  set health(int health) {
    if (health < 0) {
      _health = 0;
    } else {
      _health = health;
    }
  }

  @override
  String toString() {
    return '$name health: $_health damage: $damage';
  }
}
