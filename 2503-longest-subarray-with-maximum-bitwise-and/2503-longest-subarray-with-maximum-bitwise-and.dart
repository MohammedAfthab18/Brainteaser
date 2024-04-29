class Solution {
  int longestSubarray(List<int> nums) {
    final maximum = nums.reduce(max);
    final idx = nums.indexOf(maximum);
    var maximumSubarray = 1;
    var cur = 1;
    for (int i = idx; i < nums.length - 1; i++) {
        if (nums[i] == maximum) {     
            if (nums[i] == nums[i + 1]) {
                cur++;
                maximumSubarray = max(maximumSubarray, cur);
            } else {
                cur = 1;
            }
        }
    }

    return maximumSubarray;
  }
}