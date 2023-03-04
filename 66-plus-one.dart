List<int> plusOne(List<int> digits) {
  for (int i = digits.length - 1; i >= 0; i--) {
    if (digits[i] < 9) {
      digits[i]++;
      return digits;
    }
    digits[i] = 0;
  }
  digits[0] = 0;
  digits.insert(0, 1);
  return digits;
}

void main() {
  print(plusOne([1, 2, 3]));
  print(plusOne([4, 3, 2, 1]));
  print(plusOne([9]));
  print(plusOne([9, 9]));
}
