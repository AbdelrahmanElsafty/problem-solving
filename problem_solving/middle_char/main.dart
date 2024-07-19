void main() {
  String name = 'Abdelrahman';
  if (name.length % 2 == 0) {
    String sub = name.substring((name.length ~/ 2) - 1, (name.length ~/ 2) + 1);
    print(sub);
  } else {
    print(name[name.length ~/ 2]);
  }
}
