String convertToTitle(int n) {
  String title = "";
  while (n > 0) {
    n--;
    int curr = n % 26;
    n ~/= 26;
    title = String.fromCharCode(curr + 65) + title;
  }
  return title;
}

void main(List<String> args) {
  print(convertToTitle(1)); // A
  print(convertToTitle(28)); // AB
  print(convertToTitle(701)); // ZY
  print(convertToTitle(52)); // AZ
  print(convertToTitle(754)); // ABZ
}
