# URLify: Write a method to replace all spaces in a string with '%20: You may assume that the string
# has sufficient space at the end to hold the additional characters, and that you are given the "true"
# length of the string.

# def urlify(str)
#   i = 0
#   newStr = []
#   while i < str.length
#     if str[i] == " "
#       newStr.push('%20')
#     else
#       newStr.push(str[i])
#     end
#     i += 1
#   end
#   newStr.join('')
# end

def urlify(str)
  if str.include?(" ")
    str.gsub!(' ', '%20')
  else
    str
  end
end

p urlify("Mr John Smith")
