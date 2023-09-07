int findSecondLargest(List<int> arr) {
  if (arr.isEmpty || arr.length < 2) {
    // Handle the case when the array is empty or has less than 2 elements
    return -1; // Return a sentinel value or handle it as per your requirement
  }

  // Sort the array in descending order
  arr.sort((a, b) => b.compareTo(a));

  // Return the second element (index 1) in the sorted array
  return arr[1];
}

void main() {
  List<int> numbers = [5, 10, 3, 8, 1, 12];

  int secondLargest = findSecondLargest(numbers);

  if (secondLargest != -1) {
    print("The second largest number is $secondLargest");
  } else {
    print("The array does not have a second largest number.");
  }
}
