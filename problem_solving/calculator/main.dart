import 'dart:io';

void main() {
  double num1 = getNumber("Enter the first number: ");
  double num2 = getNumber("Enter the second number: ");

  print("\nChoose an operation:");
  print("1. Addition (+)");
  print("2. Subtraction (-)");
  print("3. Multiplication (*)");
  print("4. Division (/)");

  stdout.write("Enter your choice (1-4): ");
  String? choice = stdin.readLineSync();

  int option = int.tryParse(choice!) ?? 0;

  switch (option) {
    case 1:
      print("$num1 + $num2 = ${add(num1, num2)}");
      break;
    case 2:
      print("$num1 - $num2 = ${subtract(num1, num2)}");
      break;
    case 3:
      print("$num1 * $num2 = ${multiply(num1, num2)}");
      break;
    case 4:
      if (num2 != 0) {
        print("$num1 / $num2 = ${divide(num1, num2)}");
      } else {
        print("Error: Division by zero");
      }
      break;
    default:
      print("Invalid input. Please enter a number from 1 to 4.");
  }
}

double getNumber(String prompt) {
  stdout.write(prompt);
  return double.parse(stdin.readLineSync()!);
}

double add(double a, double b) {
  return a + b;
}

double subtract(double a, double b) {
  return a - b;
}

double multiply(double a, double b) {
  return a * b;
}

double divide(double a, double b) {
  return a / b;
}
