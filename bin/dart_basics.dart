import 'numberConvert.dart';
import 'point.dart';

void main() {
  var nc = NumberConvert();
  // print(nc.intToBinary(95));
  // print(nc.binaryToInt('1011111'));
  // print(nc.multipliers(9875000));
  // print(nc.nodInt(126, 12));
  // print(nc.nokInt(24, 35));
  // print(nc.getListNum('Проверка 555 строки или 6.25'));
  // print(nc.wordCount('Однажды в студеную летнюю пору я из лесу вышел был сильный жара и сильный я'));
  // print(nc.wordToNum('one two bag zero one five zero'));
  var pointA = Point(1, 11, 5);
  var pointB = Point.zero();
  var pointC = Point.vector();
  // var pointA = Point(2, 0, 0);
  // var pointB = Point(0, 2, 0);
  // var pointC = Point(0, 0, 2);
  // var pointX = Point(2, 2, 2);
  // print(pointA.distanceTo(pointB));
  // print(pointA.squareTriangle(pointA, pointB, pointC));
  print(pointA.pointCoords(Point));
  print(pointB.pointCoords(Point));
  print(pointC.pointCoords(Point));
}
