// class Hero {
//   //kit abuat property seteter dan get healpoint
//   //masing2 utk ini Hero dan Monster
//   late int _healthPoint;
//   //setter
//   set healthPoint(int value) => _healthPoint = value;
//   //getter
//   int get healtPoint => _healthPoint;
//   //method ktika hero tembak monster
//   String killAMonster() => "Take This and Death!";
// }

import 'character.dart';

class Hero extends Character {
  // extend diwaris property dari class Character
  String killAMonster() => "take this shoot and death !";
}
