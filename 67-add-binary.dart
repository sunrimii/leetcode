String addBinary(String a, String b) {
  String sum = "";
  int i = a.length - 1, j = b.length - 1;
  int c = 0;
  while (i >= 0 || j >= 0 || c > 0) {
    if (i >= 0) c += int.parse(a[i--]);
    if (j >= 0) c += int.parse(b[j--]);
    sum = (c % 2).toString() + sum;
    c = c ~/ 2;
  }
  return sum;
}

// 家六分鐘
void main() {
  print(addBinary("11", "1")); // 100
  print(addBinary("1010", "1011")); // 10101
}
