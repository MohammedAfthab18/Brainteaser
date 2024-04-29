class Solution {
    int minImpossibleOR(List<int> nums) {
        final List<int> powers = List.generate(32, (i) => 1 << i);
        for (final p in powers) {
            if (!nums.contains(p)) {
                return p;
            }
        }

        return -1;
    }
}