void main() {
  List<int> arr = [3, 2, 1, 2, 2, 3, 4];
  int? firstRepeatingElement = findFirstRepeatingElement(arr);

  if (firstRepeatingElement != null) {
    print('The first repeating element is: $firstRepeatingElement');
  } else {
    print('No repeating element found in the array.');
  }
}

int? findFirstRepeatingElement(List<int> arr) {
  // Create a map to store the count of each element
  Map<int, int> elementCount = {};

  // Iterate through the array
  for (int num in arr) {
    // If the element is not in the map, add it with a count of 1
    if (!elementCount.containsKey(num)) {
      elementCount[num] = 1;
    } else {
      // If the element is already in the map, it's a repeating element
      // Return the first repeating element found
      return num;
    }
  }

  // If no repeating element is found, return null
  return null;
}
