void merge(List<int> nums1, int m, List<int> nums2, int n) {
  int i = m - 1, j = n - 1, k = nums1.length - 1;
  while (i >= 0 && j >= 0) {
    if (nums1[i] <= nums2[j]) {
      nums1[k--] = nums2[j--];
    } else {
      nums1[k--] = nums1[i--];
    }
  }
  while (j >= 0) {
    nums1[k--] = nums2[j--];
  }
}

void main(List<String> args) {
  List<int> nums1 = [1, 2, 3, 0, 0, 0];
  merge(nums1, 3, [2, 5, 6], 3);
  print(nums1); // [1,2,2,3,5,6]

  nums1 = [1];
  merge(nums1, 1, [], 0);
  print(nums1); //[1]

  nums1 = [0];
  merge(nums1, 0, [1], 1);
  print(nums1); //[1]
}
