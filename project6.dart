void main() {
  List<int> inputList = [5, 2, 9, 1, 7, 8, 3, 4];

  List<int> evenPlaced = [];
  List<int> oddPlaced = [];

  for (int i = 0; i < inputList.length; i++) {
    if (i % 2 == 0) {
      evenPlaced.add(inputList[i]);
    } else {
      oddPlaced.add(inputList[i]);
    }
  }

  evenPlaced.sort(); // Sort even-placed elements in increasing order
  oddPlaced.sort((a, b) => b.compareTo(a)); // Sort odd-placed elements in decreasing order

  List<int> result = [];
  int evenIndex = 0;
  int oddIndex = 0;

  for (int i = 0; i < inputList.length; i++) {
    if (i % 2 == 0) {
      result.add(evenPlaced[evenIndex]);
      evenIndex++;
    } else {
      result.add(oddPlaced[oddIndex]);
      oddIndex++;
    }
  }

  print(result); // Print the sorted list
}
