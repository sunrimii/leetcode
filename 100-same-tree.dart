class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

// recursive
// bool isSameTree(TreeNode? p, TreeNode? q) {
//   if (p == null && q == null) return true;
//   if (p == null || q == null) return false;
//   return p.val == q.val &&
//       isSameTree(p.left, q.left) &&
//       isSameTree(p.right, q.right);
// }

// iterative
bool isSameTree(TreeNode? p, TreeNode? q) {
  List<TreeNode?> stack = [p, q];
  while (stack.isNotEmpty) {
    TreeNode? right = stack.removeLast();
    TreeNode? left = stack.removeLast();
    if (left == null && right == null) continue;
    if (left == null || right == null) return false;
    if (left.val != right.val) return false;
    stack.add(left.left);
    stack.add(right.left);
    stack.add(left.right);
    stack.add(right.right);
  }
  return true;
}
