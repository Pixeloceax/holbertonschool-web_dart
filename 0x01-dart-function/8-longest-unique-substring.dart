String longestUniqueSubstring(String str) {
  String longest = '';
  String current = '';
  Map<String, int> charMap = {};

  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    if (charMap.containsKey(char)) {
      longest = current.length > longest.length ? current : longest;
      i = charMap[char]!;
      charMap.clear();
      current = '';
    } else {
      charMap[char] = i;
      current += char;
    }
  }

  return current.length > longest.length ? current : longest;
}
