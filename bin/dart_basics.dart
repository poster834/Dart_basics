import 'package:dart_basics/dart_basics.dart' as dart_basics;
import 'dart:math';

void main() {
  var nc = NumberConvert();
  print(nc.intToBinary(95));
  print(nc.binaryToInt('1011111'));
}

// Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод, который разбивает число на простые множители и возвращает их.

// Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.
class NumberConvert {
  int binaryToInt(String strNum) {
    int intNum = 0;
    List strlist = strNum.split('');
    int j = -1;
    for (var i = strlist.length - 1; i >= 0; i--) {
      j++;
      int n = int.parse(strlist[i]);
      if (n > 0) {
        intNum = intNum + (pow(2, j)).toInt();
      }
    }
    return intNum;
  }

  String intToBinary(var num) {
    List<String> binaryArr = [];
    while (num >= 1) {
      if ((num % 2) == 0) {
        binaryArr.add('0');
        num = num ~/ 2;
      }
      if ((num % 2) != 0) {
        binaryArr.add('1');
        num = num ~/ 2;
      }
    }
    String binNum = "";
    for (var i = binaryArr.length - 1; i >= 0; i--) {
      binNum += binaryArr[i];
    }
    return binNum;
  }
}
