void main() {
  List<int> numbers = [5, 2, 9, 3, 6, 1];

  print("Original array: $numbers");

  bubbleSort(numbers);

  print("Sorted array: $numbers");
}

void bubbleSort(List<int> arr) {
  int n = arr.length;
  bool swapped;
  do {
    swapped = false;
    for (int i = 0; i < n - 1; i++) {
      if (arr[i] > arr[i + 1]) {
        // Swap arr[i] and arr[i+1]
        int temp = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = temp;
        swapped = true;
      }
    }
  } while (swapped);
}

