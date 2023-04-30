bool wordPattern(String pattern, String string) {
  var words = string.split(' ');
  if (pattern.length != words.length) {
    return false;
  }

  Map<String, String> seen = {}; // word , p
  for (int i = 0; i < words.length; i++) {
    var pat = pattern[i];
    var word = words[i];
    if (seen.containsKey(word)) {
      if (pat != seen[word]) {
        return false;
      }
    } else if (seen.containsValue(pat)) {
      return false;
    }
    seen[word] = pat;
  }
  return true;
}

void main(List<String> args) {
  print(wordPattern("abba", "dog cat cat dog")); // true
  print(wordPattern("abba", "dog cat cat fish")); // false
  print(wordPattern("aaaa", "dog cat cat dog")); // false
}
