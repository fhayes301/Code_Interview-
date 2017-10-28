

# write method to determin if string has all unique characters

def unique_string(str)
  str_to_array = str.split('').uniq

  if str.length > str_to_array.length
    return false
  else
    return true
  end
end

unique_string("beed")
unique_string("bed")
