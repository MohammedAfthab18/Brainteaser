class Solution {
  int getLastMoment(int n, List<int> left, List<int> right) {
    int maxTimeLeft = 0;
    int maxTimeRight = 0;

    for(int pos in left) {
        maxTimeLeft = max(maxTimeLeft, pos);
    }
    for(int pos in right) {
        maxTimeRight = max(maxTimeRight, n - pos);
    }
    return max(maxTimeLeft, maxTimeRight);
  }
}