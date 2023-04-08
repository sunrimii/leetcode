bool isValid(String s) {
  List<String> stack = <String>[];
  for (int i = 0; i < s.length; i++) {
    String c = s[i];
    if (stack.isEmpty || c == "(" || c == "[" || c == "{") {
      stack.add(c);
      continue;
    }
    if ((stack.last == "(" && c == ")") ||
        (stack.last == "[" && c == "]") ||
        (stack.last == "{" && c == "}")) {
      stack.removeLast();
      continue;
    }
    return false;
  }
  return stack.isEmpty;
}

void main(List<String> args) {
  assert(isValid("()"));
  assert(isValid("()[]"));
  assert(isValid("{[]}"));
  assert(!isValid("([)]"));
}
