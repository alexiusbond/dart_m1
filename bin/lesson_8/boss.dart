import 'game_character.dart';
import 'super_ability.dart';
import 'rpg_game.dart';
import 'heroes.dart';

class Boss extends GameCharacter {
  SuperAbility? defenceType;
  Boss(super.name, super.health, super.damage);

  void attack(List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.isAlive()) {
        if (hero is Berserk && hero.ability != defenceType) {
          hero.blockedDamage = (RpgGame.random.nextInt(1) + 1) * 5;
          hero.health -= damage - hero.blockedDamage;
        } else {
          hero.health -= damage;
        }
      }
    }
  }

  void chooseDefence() {
    var abilities = SuperAbility.values;
    defenceType = abilities[RpgGame.random.nextInt(abilities.length)];
  }

  @override
  String toString() {
    return 'BOSS ${super.toString()} Defence: ${defenceType != null ? defenceType!.name : 'No defence' }';
  }
}
