import 'dart:collection';

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
  // Create a HashSet to store seen elements
  HashSet<int> seenElements = HashSet<int>();

  // Iterate through the array
  for (int num in arr) {
    // If the element is already in the set, it's a repeating element
    // Return the first repeating element found
    if (seenElements.contains(num)) {
      return num;
    } else {
      // Otherwise, add the element to the set
      seenElements.add(num);
    }
  }

  // If no repeating element is found, return null
  return null;
}