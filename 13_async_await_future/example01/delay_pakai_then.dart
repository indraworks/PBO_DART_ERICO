//INI adalah contoh delay dengan then tanpa async await
//kita memaki metode dgn Typedata Future dan delay yg diberikan
//lwat parameter di metode/function yg kita buat dibawah ini

Future delayedPrint(int value, String message) {
  final duration = Duration(seconds: value);
  return Future.delayed(duration).then((value) => message);
}

void main() {
  print("job1");
  print("job2 :");
  delayedPrint(3, "hai ini job3").then((status) {
    print(status);
    //disini delayed dipanggil dan masukan paremeter 3 dan "tulisanya"
    //nah metode jalankan delay setelah 3 detik dia jalankan
    //nah setatus then disini adalah menerima nilai dari =>mesage krn tertriger pada 3 detik
    //dari metode delayedPrint diatas dan di print status yg isinya message tsb
  });
  print("job4");
  print("job5");
  print('selesai');
  // "hasilnya hai ini job 3 diprint pling bawah!"
}
