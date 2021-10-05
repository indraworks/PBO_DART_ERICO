void main() {
//pre singleton kita instansite 2 buah var obj

  //SingleTon obj1 = SingleTon._internal();

  SingleTon obj2 = SingleTon();
  // print(obj1.data);
  // print(obj2.data);
  // //kita ganti
  // obj2.data = "ganti data";
  // print(obj2.data); //akan berubah

  SingleTon obj3 =
      SingleTon(); //isntansiate singleton slalu dgn factory constructor
  obj3.data = "change!";
  SingleTon obj4 = SingleTon();

  print(obj3.data);
  print(obj2.data);
  print(obj4.data);
  // nah skgn kita mau stlah dia ada data awal
  //kita mau ubah olah data yg ada dikelas tsb dgn kttatapn
  //pengolahan yg ada tanpa buat instance lagi,dan hasilnya akan sllau sama
  //dimulai dgn static final namaClass _objnamavar = constructor.kosong(;
  //)
  // factory namaClass() {
  //   return _objnamava  }

  //nah wajib selamanya kita akan instansiate obj dgn factory constractor
  //jadi intansiatenya dgn factory bukan yg sblumnya /lainya maka data akan selamanya
  //saaaamaaa!
}

class SingleTon {
  String data = "some data";

  SingleTon._internal(); //ini blum constructor kosong

  //kita define singleton dgn static final
  static final SingleTon _objsingleton = SingleTon._internal();
  //stlahnya facotry utk return balik objsingleton yg udah dibuat
  factory SingleTon() {
    // print('calling faacotry constructor!');
    return _objsingleton;
  }
}



//tujuan cari tahu guna singgle ton buat class
/*
singletom ,stlahnya buat constrcutor dgn metode kosong
sebgarang mis .internal();
initinya kita gak mau buat instance object di main  kita
hnay jalankan metode yg ada di dalam class singleTon selamanya 
jika kita panggil metode 'singleton" ini jadi di btpass 
gak buat instance object kit apake namanya facatory constructor
dan jangan lupa buat static  waktu panggil krn utk bypass gak buat instance obj
jadi intinya gimi sblumya sudah ada instanciate awal2 dan utk berikutnya 
udah gak perlu lagi instansiate cukup bypass aja 
jadi kita instance nanti dgn nama factory constructor ! 
jadi saya jealsakan  singleton itu supaya kita gak trus2 menerus instansiate obj
di program utama ,jadi aranya lewat static di declare stlah dibuat factory construcrot
dgn kembalian obj static yg diinstance sblumnya di static class
nah nnti di main program isbtasiatenya dgn factory constructornya!
*/
