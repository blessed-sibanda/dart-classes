class Sphere {
  const Sphere({required this.radius}) : assert(radius >= 0);
  final double radius;

  static const pi = 3.14159;

  double get volume => (4 / 3) * pi * radius * radius * radius;

  double get surfaceArea => 4 * pi * radius * radius;
}
