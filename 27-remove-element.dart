int remove_element(List<int> nums, int val) {
  int j = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != val) {
      nums[j] = nums[i];
      j++;
    }
  }
  return j;
}

void main(List<String> args) {
  assert(remove_element([3, 2, 2, 3], 3) == 2);
  assert(remove_element([0, 1, 2, 2, 3, 0, 4, 2], 2) == 5);
  assert(remove_element([1, 1, 2, 4, 1], 1) == 2);
}
