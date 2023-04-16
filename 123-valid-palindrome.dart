bool isPalindrome(String s) {
  s = s.toLowerCase().replaceAll(RegExp(r"[\W_]"), "");
  int i = 0, j = s.length - 1;
  while (true) {
    if (j <= i) return true;
    if (s[i] != s[j]) return false;
    i++;
    j--;
  }
}

void main(List<String> args) {
  print(isPalindrome("A man, a plan, a canal: Panama")); // true
  print(isPalindrome("race a car")); // false
  print(isPalindrome(" ")); // true
  print(isPalindrome("aa")); // true
  print(isPalindrome("ab")); // false
  print(isPalindrome("ab_a")); // true
}
