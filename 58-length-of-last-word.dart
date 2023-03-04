int lengthOfLastWord(String s) {
  int count = 0;
  bool isSpace = false;
  for (int i = 0; i < s.length; i++) {
    if (s[i] != " ") {
      if (isSpace) {
        count = 1;
      } else {
        count += 1;
      }
      isSpace = false;
    } else
      isSpace = true;
  }
  return count;
}

void main() {
  assert(lengthOfLastWord('Hello World') == 5);
  assert(lengthOfLastWord("luffy is still joyboy") == 6);
  assert(lengthOfLastWord("   fly me   to   the moon  ") == 4);
}
