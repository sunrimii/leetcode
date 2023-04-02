class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

// recursive
// bool isSymmetric(TreeNode? root) {
//   return root == null || isMirror(root.left, root.right);
// }

// bool isMirror(TreeNode? left, TreeNode? right) {
//   if (left == null || right == null) return left == right;
//   return (left.val == right.val) &&
//       isMirror(left.left, right.right) &&
//       isMirror(left.right, right.left);
// }

// iterative
bool isSymmetric(TreeNode? root) {
  if (root == null) return true;
  List<TreeNode?> stack = [root.left, root.right];
  while (stack.isNotEmpty) {
    TreeNode? left = stack.removeLast();
    TreeNode? right = stack.removeLast();
    if (left == null && right == null) continue;
    if (left == null || right == null) return false;
    if (left.val != right.val) return false;
    stack.add(left.left);
    stack.add(right.right);
    stack.add(left.right);
    stack.add(right.left);
  }
  return true;
}
