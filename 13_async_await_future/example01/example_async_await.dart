//ini lagi tambahan utk async await
//kita lihat di body metode di delcare kmbalian jadi Future<String>
//atau Future<void> jika tak ada kembalian
//tergantung data kembalian Future< typedata >
//pnulisan async {} didalam {} adalah variable = yg depannya await
//contoh async { myvar = await bla_bla}

class Titan {
  String name = "Person Employee1";
  Future<void> getName() async {
    await Future.delayed(Duration(seconds: 4));
    name = "geisha";
    print('get name: $name done!');
  }
}

void main() async {
  var t = Titan();
  t.getName();
  print('coba');
  print(t.name);

  print('selesai');
}
//hasil dari print urut:
/*
coba
Person Employee1
selesai
get name geisha done! 
//jadi kesmpulan  dgn adanya async await gak perlu tunggu 
//suatu job selesai job itu akan dilaksanakan smntara
//computer laksanankan tugas slanjutnya
*/