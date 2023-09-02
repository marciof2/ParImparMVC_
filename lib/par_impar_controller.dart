import 'package:par_impar_mvc/par_impar_model.dart';

class ParImparController {
  final number = ParImparModel();

  verification() {
    int resto = number.number % 2;
    if (resto == 0) {
      return 'Par';
    } else {
      print(number.number);
      return 'Impar';
    }
  }

  int numero() {
    return number.newNumber();
  }

  getNumber() {
    number.newNumber();
  }
}
