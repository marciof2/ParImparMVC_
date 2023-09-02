import 'dart:math';

class ParImparModel {
  int _number = Random().nextInt(1000);

  int get number {
    return _number;
  }

  int newNumber() {
    return _number = Random().nextInt(1000);
  }
}
