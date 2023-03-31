void main() {
  List<int> numbers = [2, 5, 6, 8, 9, 10, 11, 15, 17, 18, 19];
  List<int> longestSequence = []; 
  int start = 0; 

  for (int i = 0; i < numbers.length; i++) {
    if (i > 0 && numbers[i] != numbers[i - 1] + 1) {
      if (i - start > longestSequence.length) {
        longestSequence = numbers.sublist(start, i); 
      }
      start = i; 
    }
  }

  // Check if the last sequence is the longest
  if (numbers.length - start > longestSequence.length) {
    longestSequence = numbers.sublist(start);
  }

  print("Longest subsequence of consecutive numbers: $longestSequence");
}
