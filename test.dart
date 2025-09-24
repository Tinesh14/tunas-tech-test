taskFunction(int n, int m, Map<int, int> data) {
  var sortedMap = Map.fromEntries(
      data.entries.toList()..sort((e1, e2) => e1.key.compareTo(e2.key)));
  int power = m;
  sortedMap.forEach((key, value) {
    if (power >= key) {
      power += value;
    }
  });
  return power;
}

void main() {
  print(taskFunction(4, 2, {8: 5, 9: 4, 3: 1, 2: 3}));
  // print(taskFunction(5, 3, {8: 9, 4: 8, 5: 7, 6: 5, 7: 6}));
  // print(taskFunction(5, 9, {2: 3, 3: 4, 6: 2, 7: 2, 8: 3}));
}
