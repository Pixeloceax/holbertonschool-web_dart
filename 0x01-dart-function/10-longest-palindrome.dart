String longestPalindrome(String s) {
  String longestPalindrome = '';
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) &&
          substring.length > longestPalindrome.length) {
        longestPalindrome = substring;
      }
    }
  }
  return longestPalindrome;
}

bool isPalindrome(String word) {
  return word == word.split('').reversed.join('');
}
