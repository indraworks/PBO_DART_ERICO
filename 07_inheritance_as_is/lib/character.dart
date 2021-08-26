class Character {
  late int _pointHealth;
  //setter
  //kalau di java da function kayak gini
  //setPointHealth() dan isinya sama namaObj.setPointHealt(20);
  //setter di dart adalah property
  void set PointHealth(int value) {
    if (value < 0) {
      value *= -1;
    }
    _pointHealth = value;
  }

  //geter
  int get PointHealth => _pointHealth;
}
