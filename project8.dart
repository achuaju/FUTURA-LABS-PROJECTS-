int binarySearch(List<int> sortedArray, int target) {
  int left = 0;
  int right = sortedArray.length - 1;

  while (left <= right) {
    int mid = left + ((right - left) ~/ 2);

    if (sortedArray[mid] == target) {
      return mid; // Found the target value
    } else if (sortedArray[mid] < target) {
      left = mid + 1; // Adjust the left boundary
    } else {
      right = mid - 1; // Adjust the right boundary
    }
  }

  return -1; // Target value not found in the array
}

void main() {
  List<int> sortedArray = [1, 3, 5, 7, 9, 11, 13, 15];
  int target = 7;

  int position = binarySearch(sortedArray, target);

  if (position != -1) {
    print("Target $target found at position $position");
  } else {
    print("Target $target not found in the array");
  }
}
