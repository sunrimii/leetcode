class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

List<int> inorderTraversal(TreeNode? node) {
  // recursive
  // if (node == null) return [];
  // return [
  //   ...inorderTraversal(node.left),
  //   node.val,
  //   ...inorderTraversal(node.right),
  // ];

  // iterative
  List<int> visited = [];
  List<TreeNode> stack = [];
  while (stack.length > 0 || node != null) {
    if (node != null) {
      stack.add(node);
      node = node.left;
    } else {
      node = stack.removeLast();
      visited.add(node.val);
      node = node.right;
    }
  }
  return visited;
}
