bool canWinNim(int n) {
  return n % 4 != 0;
}

void main(List<String> args) {
  print(canWinNim(8)); // false
  print(canWinNim(6)); // true
  print(canWinNim(5)); // true
  print(canWinNim(4)); // false
  print(canWinNim(1)); // true
  print(canWinNim(2)); // true
}
