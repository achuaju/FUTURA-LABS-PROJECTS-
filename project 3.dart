void selectionSort(List<int> arr) {
  int n = arr.length;

  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;

    for (int j = i + 1; j < n; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }

    // Swap arr[i] and arr[minIndex]
    int temp = arr[i];
    arr[i] = arr[minIndex];
    arr[minIndex] = temp;
  }
}

void main() {
  List<int> numbers = [64, 25, 12, 22, 11];
  print("Original array: $numbers");

  selectionSort(numbers);

  print("Sorted array: $numbers");
}
