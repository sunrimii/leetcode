class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

ListNode? deleteDuplicates(ListNode? head) {
  if (head == null) return null;
  ListNode a = head;
  ListNode? b = head.next;
  while (b != null) {
    if (a.val != b.val) {
      a.next = b;
      a = b;
    }
    b = b.next;
  }
  a.next = b;
  return head;
}

void printNodes(ListNode? head) {
  ListNode? node = head;
  while (true) {
    if (node == null) break;
    print(node.val);
    node = node.next;
  }
}

void main(List<String> args) {
  // Output: [1,2]
  ListNode head = ListNode(1, ListNode(1, ListNode(2)));
  // printNodes(head);
  printNodes(deleteDuplicates(head));

  // Output: [1,2,3]
  head = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(3)))));
  // printNodes(head);
  printNodes(deleteDuplicates(head));
}
