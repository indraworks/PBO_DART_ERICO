//INI CONTOH AYSNC AWAIT FUTURE 1

class Person {
  String name =
      'default name'; //default name dtampilkna jika blum waktu 3 detik
  //method ambil data cara biasa
  void getData() {
    name = 'Pak Jokontol'; //misalkan ambil dari mongodb dbse 3 detik
    print('get data $name  [done]');
  }

  //kita pakai async ambil data cara async-await
  Future<void> getDataAsync() async {
    //dimethod ditulis data kembalian future
    //kita laksanakan callback ambil data dan print
    await Future.delayed(Duration(seconds: 3), () => print("data get Done"));
  }
}

//contoh biasa tanpa asyn await
void main() {
  Person myp = Person();
  //cara biasa;
  // print('job1');
  // print('job2 ');
  // myp.getData();
  // print("job3");
  // print('job4 end');

  //cara async await future
  print('job1');
  print('job2 :');
  myp.getDataAsync();
  print("job3");
  print('job4 end');
}

/*
jadi gini Future itu adalah type data penampung dari async await
nah dia hanya nampung terima sambil nunggu dimasa yg akan datang
Future<type_data> klo hasil utk diprint maka Future<void> 
method2 future wait() delay()
nah di function atau method kita harus dipasang async dan di bagian 
variable pnerima harus dipasang await..jadi gini 
setelah jalangkan procedure asymc ini maka program akan tingalkan 
lanjutkan jalankan printah berikutnya
nah kalau mau tunggu sampai selesai bisa pakai .then utk dilaksanakan 
diatas akan dipberikan contoh 1 yg biasa
                       contoh 2 dgn async await
diatas kita misalkan class Person instansiate yg ambil obje anam dari database
dan di print hasilnya mis dari db mnggo internet nunggu 3 detik...
jika tanpa await maka otomatis akan tercetak defaultname ...
kalau tanpa async await maka job 3 method akan dijalankan sampai selsai
kalau di uI ini akan terlihat ngelag tampilanya 
kalau dgn asyn await maka perinah tsb dijalankan maka job slnjutnya dijalankan 
nah jika si delyed await tadi slsai terima maka dia akan print job yg dtrirmannya
biasanya jatuh di bagian terakhir 

*/
