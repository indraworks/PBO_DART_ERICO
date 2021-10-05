void main() {
//panggil joinMeetup
  joinMeetup()
      .then((data) => print(data))
      .catchError((error) => print(error.message));
}

Future<String?> joinMeetup() async {
  try {
    //Future dibawah ini ada deleyaed dan ada callback
    // function error
    await Future.delayed(Duration(seconds: 1), () {
      //throw ('Some Nasty Error!');
      //jika di // tutup error call back alias gak ada error
      //maka program akan retun "sucess Y ini ada adalah data yg dtangkap di
      //program utama dan di print"
    });

    return "Success YEY!";
  } catch (e) {
    throw Exception(e);
  }
}

/*
jalanknya program ini adalah contoh async kalau mau hubungi server /thhp
ada duration dan trnyata ada error di callback nah program main akan tangkap
hasil error di bagian catch e ,baris 18
dan akan menampilkannya di error.message baris 4
tapi jika tidak ada error di callback maka program akan tru retrun return sucess
nah ini yg ditangkap dan dimasukan ke data ,dan di prit(data)




*/
