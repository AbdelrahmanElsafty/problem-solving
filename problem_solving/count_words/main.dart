void main() {
  String text = "Hello, this is a sample sentence with several words.";
  int wordCount = countWords(text);

  print('The number of words in the text is: $wordCount');
}

int countWords(String input) {
  input = input.trim();

  List<String> words = input.split(RegExp(r'\s+'));

  return words.length;
}
