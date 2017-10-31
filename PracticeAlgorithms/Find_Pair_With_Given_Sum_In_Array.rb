# Given an unsorted array with integers, find a pair with given sum in it

def find_pair(arr, sum)
  correct_index = []

  arr.each_with_index do |num, index|
    arr.each_with_index do |second_num, second_index|
      if num + second_num == sum
        correct_index.push([index, second_index])
      end
    end
  end

  correct_index
end


# p find_pair([8,7,2,5,3], 10)
# p find_pair([8,7,5,2,3], 10)


# Above solution is O(n^^2)

def find_pair_again(arr,sum)
  new_arr = arr.sort
  low = new_arr[0]
  high = new_arr[-1]
  pair = []

  while low < high
    if low + high == sum
      pair.push([low,high])
    end
    (low + high < sum) ? low += 1 : high -= 1
  end

  pair.select {|x| x[0] != x[1] }
end

p find_pair_again([8,7,2,5,3], 10)

# this is O(nlogn)


# Link to questions and solution in java
# http://www.techiedelight.com/find-pair-with-given-sum-array/
