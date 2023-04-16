List<int> getRow(int rowIndex) {
  var prev = [1];
  for (int i = 0; i < rowIndex; i++) {
    List cur = [];
    for (int i = 0; i < prev.length - 1; i++) {
      cur.add(prev[i] + prev[i + 1]);
    }
    prev = [1, ...cur, 1];
  }
  return prev;
}

void main(List<String> args) {
  print(getRow(0));
  print(getRow(1));
  print(getRow(2));
  print(getRow(3));
  print(getRow(4));
  print(getRow(5));
}
