import 'lib/hero.dart';
import 'lib/monster.dart';
import 'lib/monster_cicak.dart';
import 'lib/monster_ubur.dart';

void main() {
  //instanstiate obj dari masing2 class
  Hero h1 = Hero();
  Monster m1 = Monster();
  h1.PointHealth = -30;
  m1.PointHealth = 40;
  print('nilai health moster ' + m1.PointHealth.toString());
  print(
      'nilai health moster ' + h1.PointHealth.toString()); //akan slalu positive
  //saya declare anak
  Monster mUbur1 = MonsterUbur();
  //ini  diatas gak papa bisa karena di sudah mewarisi dari mosnter
  //atau lazimnya kalau buat obhject ubur maka MonsterUbur mubur2 = MonsterUbur()
  //mrupakan obect dari class MonsterUbur dan typeData MonsterUbur
  mUbur1.PointHealth = 3;
  print(mUbur1
      .EathHumans()); //dia gak ada method Swim sbb dari typedata Monster parentnya
  MonsterUbur mUbur2 = MonsterUbur();
  print(mUbur2.Swim());
  print(mUbur2.EathHumans());
  //diatas Ubur2 punya 2 method sbb dia adalah anak 1 dari parent Eat..1 dari dirinya Swim
   
 //gunanya List<Monster>  pada obj yang bertipe data Class Monster (parentnya moster2 ckoa ubur etc) 
 //sekarang gini gimana ngasih instruction command pada  smua  mosnter
 //mis kit amau kasih obj dari instatiate mosnter ubur2 ,object instansiate monster kcoa
 //obj instantiate monster 9parentnya) dlm satu waktu ,
 //kalau cara biasa satu2 kita tulis peritem obj masukan methodnya  supaya gak nulis ulang2 hal yg sama
 //maka kita masukan list  sbb:
 


}




/*
intinya inheritance itu pewarisan jadi property dan metode bisa diwariskan pada class lain
disebut kelass anak ( child cladd) dan pewaris /root disebut parent_class
class anak memakai kata extends dan nama iduk class
jika root class /induk clas bersift privat maka tidak bisa diturunkan pada anak!
disini kita buat hero class dan moster class  masing2 punya kesamaan mehod 
utk itu karn sama kita jadikan ditaruh di parent class
sehingga gak nulis 2 atau 3x dst jadi tinggal cukup kata extend maka
otomatis smua property dan method bakal diwariskan dan melekat di class anak


*/