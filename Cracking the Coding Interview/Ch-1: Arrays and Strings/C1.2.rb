#Given two strings, write a method to decide if one is a permutation of the other.

def permuted_string(str1, str2)
  return true if str1.split('').sort == str2.split('').sort
  false
end

p permuted_string("lemon","melon")
p permuted_string("egg", "juice")
p permuted_string("lemon","lemon")
