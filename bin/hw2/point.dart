import 'dart:math';
// Реализуйте класс Point, который описывает точку в трёхмерном пространстве.
//У данного класса реализуйте метод distanceTo(Point another), который возвращает расстояние от данной точки до точки в параметре.
//По желанию можете реализовать метод, принимающий три точки в трёхмерном пространстве и возвращающий площадь треугольника, который образуют данные точки.
//Реализуйте factory-конструкторы для данного класса, возвращающие начало координат,
//и ещё несколько на своё усмотрение (например, конструктор, возвращающий точку с координатами [1,1], которая определяет единичный вектор).

class Point {
  num x;
  num y;
  num z;

  Point(double this.x, double this.y, double this.z);

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  factory Point.vector() {
    return Point(1, 1, 1);
  }

  factory Point.vectorX() {
    return Point(1, 0, 0);
  }

  factory Point.vectorY() {
    return Point(0, 1, 0);
  }

  factory Point.vectorZ() {
    return Point(0, 0, 1);
  }

  double distanceTo(Point b) {
    double distance = sqrt((b.x - this.x) * (b.x - this.x) +
        (b.y - this.y) * (b.y - this.y) +
        (b.z - this.z) * (b.z - this.z));
    return distance;
  }

  double squareTriangle(Point a, Point b, Point c) {
    double square = 0;
    double half_perimeter = 0;
    double ab = a.distanceTo(b);
    double bc = b.distanceTo(c);
    double ca = c.distanceTo(a);
    half_perimeter = (ab + bc + ca) / 2;
    square = sqrt(half_perimeter *
        (half_perimeter - ab) *
        (half_perimeter - bc) *
        (half_perimeter - ca));
    return square;
  }

  List pointCoords(Point) {
    List coords = [];
    coords.add(x);
    coords.add(y);
    coords.add(z);
    return coords;
  }
}
