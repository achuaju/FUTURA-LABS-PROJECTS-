bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print("Prime numbers in the array:");
  for (int number in numbers) {
    if (isPrime(number)) {
      print(number);
    }
  }
}
