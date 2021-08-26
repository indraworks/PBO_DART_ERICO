// class Monster {
//   late int _healthPoint;
//   //setter
//   void set healthPoint(int value) {
//     if (value < 0) {
//       value *= -1;
//     }
//     _healthPoint = value;
//   }

//   //getter
//   int get healthPoint {
//     return _healthPoint;
//   }

//   //method Monster
//   killHuman() => "hi eat you yumi yumi!";
// }

//pada class diatas kita ubah utk smua property karn kita tulis 2x
//yaitu di class monster dan hero utk itu buat parent class yg berisi
//property yg sama diatas dan kita turunkan ke kelas hero & class moster
//sbb:
import 'character.dart';

class Monster extends Character {
  //methode Mosnter
  EathHumans() => "nyumi nyumi eat humans";
}
