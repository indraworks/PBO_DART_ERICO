//sblum di buat generic
//contoh buat class yg method kluarin data ,hasil adalah type int
class IntSecureBox {
  final int _data;
  final String _pin;
  IntSecureBox(this._data, this._pin);
  //buat get
  int? getData(String pin) => (pin == _pin) ? _data : null;
}
