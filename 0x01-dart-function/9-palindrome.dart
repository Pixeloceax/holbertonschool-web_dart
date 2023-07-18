bool isPalindrome(String s) {
  var reversed = s.split('').reversed.join('');
  if (s == reversed && s.length > 3) {
    return true;
  } else {
    return false;
  }
}
