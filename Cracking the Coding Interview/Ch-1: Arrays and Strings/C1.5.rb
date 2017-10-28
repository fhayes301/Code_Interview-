# There are three types of edits that can be performed on strings: insert a character,
# remove a character, or replace a character. Given two strings, write a function to check if they are
# fone edit (or zero edits) away.There are three types of edits that can be performed on strings: insert a character,
# remove a character, or replace a character. Given two strings, write a function to check if they are
# one edit (or zero edits) away.remove a character, or replace a character. Given two strings, write a function to check if they are
# one edit (or zero edits) away.


def one_away(str1, str2)
  if str1 == str2
    return true
  elsif (str1.length - str2.length).abs > 1
    return false
  end

  num_edits =
  index_1 = 0
  index_2 = 0

  while index_1 < str1.length
    if str1[index_1] != str2[index_2]
      num_edits += 1
      index_2 += 1 if str1.length == str2.length
    else
      index_2 += 1
    end
    index_1 += 1

    
    p num_edits
    return false if num_edits > 1
  end

  true
end


p one_away("pale", "ple")
p one_away("pales", "pale")
p one_away("pale", "bale")
p one_away("pale", "bake")
