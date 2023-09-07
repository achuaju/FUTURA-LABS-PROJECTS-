String reverseWords(String input) {
  List<String> words = input.split(" "); // Split the input string into words
  List<String> reversedWords = List.from(words.reversed); // Reverse the order of words
  String reversedString = reversedWords.join(" "); // Join the reversed words back together

  return reversedString;
}

void main() {
  String inputString = "Hello World";
  String reversedString = reverseWords(inputString);

  print("Original String: $inputString");
  print("Reversed String: $reversedString");
}
