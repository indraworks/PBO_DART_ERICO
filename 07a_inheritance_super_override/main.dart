void main() {
  //kita instansiate employee sbb:
  Employee emp1 = Employee(
      name: 'indra', age: 20, height: 172, taxCode: 'ind212', salary: 15000000);
  emp1.InfoEmpoyee();
  print(emp1.toString());
}

//kita buat clas Person parent dan class Employee adalah child
//filed class person name,age,height
//field class Employee salary taxCode
//jadi jika kita mau akses field di Person dari class anak maka harus ditulis super stlah constructor Emloyee dibuat
//supaya bisa aksess field parentnya sbb:
//

class Person {
  final String name;
  final int age;
  final double height;
  //constructor di dart 2.0 harus pake required
  Person({required this.name, required this.age, required this.height});

  @override
  String toString() => "name:$name age: $age height:$height";

  void InfoPerson() {
    print('info person name:$name age:$age height:$height');
  }
}

class Employee extends Person {
  String taxCode;
  int salary;

  //jadi yg dari parent ditulis typedata variable,kalau yg dirinya cukup this.variable
  //karena sudah dideclare dulu fieldnya
  //tlahnya field parent tadi ditulis super( namavar :parameter) usahakan sama nama_var = parameter
  //biar gak bingung dan bnyak salah
  Employee(
      {required String name,
      required int age,
      required double height,
      required this.taxCode,
      required this.salary})
      : super(name: name, age: age, height: height);

  @override
  String toString() => " ${super.toString()},taxCode:$taxCode, salary:$salary";

  //kalau super.toString adalah mengacu pada field2 parentclass yg akan diprint
  //jadi utk anak class ini yg dideclare salary dan taxCode

  void InfoEmpoyee() {
    print('info employee: $name  salary:$salary taxCode:$taxCode');
  }
}

/*
mengenal method toString() 

smua property atau field dari tiap class diatas baik ,dari parentclas dan child class
kalau kita print variablenya dgn method toString() maka akan ada hasil 'instance of nama_variablenya
nah utk memakai method parent class tsb maka kita harus menggunakan statement @override

di dart class toString() adalah method dari sbuah object
nah di class anak dia toString tadi adalah fucntion /atau method yg kita pakai 
utk hal tsb maka kita kasih @override diatasnya 

  dart class            paretnClass (Person)      anak class (Employee)
object -->toString | --->  @override               ---->
                            toString()=>    print(salary.toStirng())
nanti kita akan bicarakan abstact kelas nah 
kalo gunakan method abstract class maka di anak class harus ditulis @override 
*/