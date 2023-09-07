void main() {
  List<int> arr1 = [1, 3, 5, 7, 9];
  List<int> arr2 = [2, 4, 6, 8, 10];

  List<int> mergedAndSorted = mergeAndSort(arr1, arr2);

  print("Merged and Sorted Array: $mergedAndSorted");
}

List<int> mergeAndSort(List<int> arr1, List<int> arr2) {
  List<int> result = [];

  int i = 0;
  int j = 0;

  while (i < arr1.length && j < arr2.length) {
    if (arr1[i] < arr2[j]) {
      result.add(arr1[i]);
      i++;
    } else {
      result.add(arr2[j]);
      j++;
    }
  }

  // Add remaining elements from arr1
  while (i < arr1.length) {
    result.add(arr1[i]);
    i++;
  }

  // Add remaining elements from arr2
  while (j < arr2.length) {
    result.add(arr2[j]);
    j++;
  }

  return result;
}
