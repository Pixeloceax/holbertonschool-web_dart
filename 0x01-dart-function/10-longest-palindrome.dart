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
  if (longestPalindrome.isEmpty) {
    return 'none';
  } else {
    return longestPalindrome;
  }
}

bool isPalindrome(String s) {
  var reversed = s.split('').reversed.join('');
  if (s == reversed && s.length >= 3) {
    return true;
  } else {
    return false;
  }
}
