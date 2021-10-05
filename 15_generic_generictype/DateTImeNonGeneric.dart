//nah skrng kita mau buat kalau nanti data g kluar dype datatime
//maka kita harus buat class lagi
class DataTimeSecureBox {
  late final DateTime _data;
  late final String _pin;
//contrutor
  DataTimeSecureBox(this._data,this._pin);

  DateTime? getData(String pin) => (pin == _pin) ? _data : null;

 
}