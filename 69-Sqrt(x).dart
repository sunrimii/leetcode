int mySqrt(int x) {
  double sqrt = 0;
  double sq = 0;
  while (true) {
    if (sq > x) return sqrt.toInt() - 1;
    if (sq == x) return sqrt.toInt();
    sqrt += 1;
    sq = sqrt * sqrt;
  }
}

void main() {
  print(mySqrt(4)); // 2
  print(mySqrt(8)); // 2
  print(mySqrt(9)); // 3
  print(mySqrt(10)); // 3
}
