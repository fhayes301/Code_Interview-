# String Compression: Implement a method to perform basic string compression using the counts
# of repeated characters. For example, the string aabcccccaaa would become a2b1c5a3. If the
# "compressed" string would not become smaller than the original string, your method should return
# the original string. You can assume the string has only uppercase and lowercase letters (a - z).


def compressed_string(string)
  str = string.downcase

  empty_str = []
  index = 0
  count = 1
  letter = ""
  previous_letter = ""

  str.split('').each_with_index do |char, index|
    if char == string[index+1]
      count += 1
    else
      empty_str << "#{char}#{count}"
      count = 1
    end
  end

  empty_str.join
end

  p compressed_string("aabccccaaa")
