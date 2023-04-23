int singleNumber(List<int> nums) {
  return nums.reduce((value, element) => value ^ element);
}

void main(List<String> args) {
  print(singleNumber([2, 2, 1])); // 1
  print(singleNumber([4, 1, 2, 1, 2])); // 4
  print(singleNumber([1])); // 1
}
//15min