void main() {
  print(isValidPassword("abc1234"));
  print(isValidPassword("abc12"));
  print(isValidPassword("abc123!@#"));
  print(isValidPassword("12345678"));
}

bool isValidPassword(String password) {
  if (password.length < 8) {
    return false;
  }

  for (int i = 0; i < password.length; i++) {
    if (!password[i].contains(RegExp(r'[a-zA-Z0-9]'))) {
      return false;
    }
  }

  return true;
}
