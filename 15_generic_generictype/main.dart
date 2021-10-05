//diberikan case contoh ttg generic
//misal mau buka kunci harus ada pasword

import 'IntegerNonGeneric.dart';
// import 'DateTimeNonGeneric.dart';

void main() {
  IntSecureBox kncipwd = IntSecureBox(100, "pwd123");
  //mau ambil getdata mesti masukan password
  print(kncipwd.getData("pwd123")); //data bisa diambil dbab
  //passing_parameter pin == _pin yaitu "pwd123"
  //jika salah kunuci hasil jadi null
  print(kncipwd.getData("pwd321")); //hasil null

  //kita sudah buat clss utk kmbalian
}
