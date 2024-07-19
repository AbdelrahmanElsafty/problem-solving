void main() {
  double radius = 5.0;
  double area = calculateCircleArea(radius);

  print('The area of the circle with radius $radius is $area');
}

double calculateCircleArea(double radius) {
  const double pi = 3.14159;

  double area = pi * radius * radius;
  return area;
}
