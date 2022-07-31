import 'dart:math';

class Point{
  final double x;
  final double y;
  final double z;

  Point(this.x, this.y, this.z);

  factory Point.zero()=> Point(0,0,0);

  factory Point.unitVector()=> Point(1,1,1);

  double distanceTo(Point another) {
    var dx = another.x;
    var dy = another.y;
    var dz = another.z;

    return (sqrt(pow((dx - x), 2) + pow((dy - y), 2) + pow((dz - z), 2))*100).round() / 100;
  }

  double triangleArea(Point pointB, Point pointC){
    var a = distanceTo(pointB);
    var b = distanceTo(pointC);
    var c = pointB.distanceTo(pointC);
    var p = (a+b+c)/2;

    return (sqrt(p*(p-a)*(p-b)*(p-c))*100).round() / 100;
  }

}
