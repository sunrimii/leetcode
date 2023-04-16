int maxProfit(List<int> prices) {
  // 漲的時候檢查最大利潤，如果當前利潤大於最大利潤，就更新最大利潤
  // 虧的時候更新起始值，意思是既然現在算出來是虧的，那就試著從這裡買起
  var left = 0;
  var maxProfit = 0;
  for (var right = 1; right < prices.length; right++) {
    if (prices[left] < prices[right]) {
      int profit = prices[right] - prices[left];
      maxProfit = profit > maxProfit ? profit : maxProfit;
    } else {
      left = right;
    }
  }
  return maxProfit;
}

void main(List<String> args) {
  print(maxProfit([7, 1, 5, 3, 6, 4])); // 5
  print(maxProfit([7, 6, 4, 3, 1])); // 0
  print(maxProfit([1, 2])); // 1
}
