# How to run `ruby binary_tree.rb <your_number_to_search>`
# This is binary tree implementation in ruby
arg1 = ARGV[0]

def binary_search(arr, search)
  search = search.to_i
  i, j = 0, arr.length;
  mid = (i + j) / 2

  while i < mid
    if search < arr[mid]
      j = mid
    elsif search > arr[mid]
      i = mid
    elsif search == arr[mid]
      break
    end
    mid = (i + j) / 2
  end
  if arr[mid] == search 
    puts "The search number is at index #{mid}"
  else
    puts '-1, There is no such number in given array '
  end
end

binary_search([1,2,3,4,5,6,7,8], arg1)
