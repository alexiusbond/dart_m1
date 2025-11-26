import 'dart:math';
import 'boss.dart';
import 'heroes.dart';

class RpgGame {
  // Здесь будет логика игры

  static final random = Random();
  static var roundNumber = 0;

  static void start() {
    print('RPG Game started!');
    final boss = Boss('Dragon', 1000, 50);
    final warrior1 = Warrior('Ahiles', 290, 10);
    final warrior2 = Warrior('Hercules', 280, 15);
    final magic = Magic('Ahiles', 270, 15);
    final berserk = Berserk('Viking', 260, 10);
    final doc = Medic('Aibolit', 250, 5, 15);
    final assistant = Medic('Junior', 300, 5, 5);

    final heroes = [warrior1, doc, magic, berserk, warrior2, assistant];
    _printStatistics(boss, heroes);
    while (!_is_game_over(boss, heroes)) {
      _playRound(boss, heroes);
    }
  }

  static void _printStatistics(Boss boss, List<Hero> heroes) {
    print('-------- ROUND $roundNumber --------');
    print(boss);
    for (var hero in heroes) {
      print(hero);
    }
  }

  static bool _is_game_over(Boss boss, List<Hero> heroes) {
    if (!boss.isAlive()) {
      print('Heroes won!!!');
      return true;
    }
    bool allHeroesDead = true;
    for (var hero in heroes) {
      if (hero.isAlive()) {
        allHeroesDead = false;
        break;
      }
    }
    if (allHeroesDead) {
      print('Boss won!!!');
      return true;
    }
    return false;
  }

  static void _playRound(Boss boss, List<Hero> heroes) {
    roundNumber++;
    boss.chooseDefence();
    boss.attack(heroes);
    for (var hero in heroes) {
      if (hero.isAlive() &&
          boss.isAlive() &&
          hero.ability != boss.defenceType) {
        hero.attack(boss);
        hero.applySuperPower(boss, heroes);
      }
    }
    _printStatistics(boss, heroes);
  }
}
