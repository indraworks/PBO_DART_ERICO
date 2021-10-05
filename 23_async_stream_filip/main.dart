void main() async {
  var cStream = countStream(10);
  var sum = await sumStream(cStream);
  print(sum);
}

//pakai async* utk kmbaian stream
Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
    yield i;
  }
}

//pakai async saja utk kembalian future

Future<int?> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    sum += value;
    print('Iteraded value $value');
    print(sum);
  }
}

/*
ini tentang stream kalau stream 
di bagaian awal func kalang harus pakai  async* {}
nah dalam kalang pakai yield (variable)
jadi perlu diingat kalau kembalian async* ( async dgn bintang maka 
nilai type datanya adalah Stream).
nah kalau dia kebalian dari sbuah functuon typedata adalah Future
maka diawal kalang {} hanya gunakan async {}
demikian!

itunganya :
1 =1
1+2 =3
1+2+3 =6
1+2+3+4 =10
1+2+3+4+5 =15
1+2+3+4+5+6 = 21
1+2+3+4+5+6+7=28
1+2+3+4+5+6+7+8=36
1+2+3+4+5+6+7+8+9=45
1+2+3+4+5+6+7+8+9+10 =55
*/