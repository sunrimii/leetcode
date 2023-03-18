int climbStairs(int n) {
  // dynamic programming
  // List<int> steps = [1, 2];
  // while (steps.length < n) {
  //   steps.add(steps[steps.length - 1] + steps[steps.length - 2]);
  // }
  // return steps.last;

  List<int> steps = [1, 2, 0];
  if (n <= 2) return steps[n - 1];
  for (int i = 0; i < n - 2; i++) {
    steps[2] = steps[0] + steps[1];
    steps[0] = steps[1];
    steps[1] = steps[2];
  }
  return steps[2];
}

void main(List<String> args) {
  print(climbStairs(1)); // 1
  print(climbStairs(2)); // 2
  print(climbStairs(3)); // 3
  print(climbStairs(4)); // 5
  print(climbStairs(5)); // 8
  print(climbStairs(6)); // 13
}
// n=1;
// 1

// n=2
// 1+1
// 2

// n=3
// 1+1+1
// 2+1
// 1+2

// n=4
// 1+1+1+1
// 1+1+2
// 1+2+1
// 2+1+1
// 2+2

// n=5
// 1+1+1+1+1
// 1+1+1+2
// 1+1+2+1
// 1+2+1+1
// 2+1+1+1
// 1+2+2
// 2+1+2
// 2+2+1
