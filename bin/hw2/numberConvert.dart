import 'dart:math';

class NumberConvert {
// Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод, который разбивает число на простые множители и возвращает их.
  int nodInt(int numX, int numY) {
    int nod;
    List multiArr = [1];
    for (var i = 2; i <= numX; i++) {
      if (numX % i == 0) {
        for (var j = 2; j <= numY; j++) {
          if (numY % i == 0) {
            multiArr.add(i);
          }
        }
      }
    }
    multiArr.sort();
    nod = multiArr.last;
    return nod;
  }

  int nokInt(int numX, int numY) {
    int nok = 0;
    int maxNum = (numX > numY) ? numX : numY;
    for (var i = maxNum; i <= numX * numY; i++) {
      if (i % numX == 0 && i % numY == 0) {
        nok = i;
        break;
      }
    }
    return nok;
  }

  List multipliers(var num) {
    List multipliers = [];
    int n = 0;
    for (var i = 2; i <= sqrt(num); i++) {
      n = 0;
      if (num % i == 0) {
        for (var j = 2; j < i; j++) {
          if (i % j == 0) {
            n++;
          }
        }
        if (n == 0) {
          multipliers.add(i);
        }
      }
    }
    return multipliers;
  }

// Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.
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

//Реализуйте метод, который принимает строку слов, разделённых пробелами.
//Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.

  List getListNum(String str) {
    List<num> listNumbers = [];
    List listWords = str.split(' ');
    listWords.forEach((elem) {
      var numDec = double.tryParse(elem);
      if (numDec != null) {
        listNumbers.add(numDec);
      }
    });
    return listNumbers;
  }

//Есть коллекция слов. Реализуйте метод, возвращающий Map.
//Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.

  Map wordCount(String str) {
    List listWords = str.split(' ');
    Map wordCount = Map();
    listWords.forEach((elem) {
      if (wordCount.containsKey(elem)) {
        wordCount[elem] = wordCount[elem] + 1;
      } else {
        wordCount[elem] = 1;
      }
    });
    return wordCount;
  }

// Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого.
//Реализуйте метод, возвращающий цифры без повторений, которые встречаются в данной строке.
//Однако цифры встречаются в виде английских слов от zero до nine.
//Например, в результате строки ‘one, two, zero, zero’ мы получим следующий результат: [1, 2, 0].
//Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их.

  Set wordToNum(String str) {
    Set numList = {};
    var index;
    Map<int, String> numerator = {
      0: 'zero',
      1: 'one',
      2: 'two',
      3: 'three',
      4: 'four',
      5: 'five',
      6: 'six',
      7: 'seven',
      8: 'eight',
      9: 'nine'
    };
    var revers_numerator = numerator.map((k, v) => MapEntry(v, k));
    List strList = str.split(' ');
    strList.forEach((elem) {
      if (numerator.containsValue(elem)) {
        numList.add(revers_numerator[elem]);
      }
    });
    return numList;
  }
}

//Реализуйте метод, который вычисляет корень любой заданной степени из числа.
//Реализуйте данный метод как extension-метод для num.
//Алгоритм можете взять на википедии как «Алгоритм нахождения корня n-й степени».
//Запрещается использовать методы math.
//В случае когда значение вернуть невозможно, необходимо бросать исключение с описанием ошибки.
extension rootInDeg on NumberConvert {
  num getRoot(var x, var n) {
    var root = 0.0;
    double eps = 0.00001;
    double x2 = x / 2;
    double A2 = getPow(x2, n);
    print(x);
    print(A2);

    if (x < A2) {
      print("x small");
      // while ((A2 - x) > eps) {
      //   A2 = getPow(x2 - eps, n);
      // }
      // root = A2;
    }
    if (x > A2) {
      print("x biggest");
    }
    if (x == A2) {
      root = x;
    }
    print("=========");
    return root;
  }

  double getPow(x, n) {
    double pow = 1;
    for (var i = 0; i < n; i++) {
      pow = pow * x;
    }
    return pow;
  }
}
