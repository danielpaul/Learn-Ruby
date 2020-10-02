=begin
Create a function that finds all elements in the given array, such that each element is greater than all elements to the right of it.

Examples
leader([2, 3, 20, 15, 8, 3]) ➞ [20, 15, 8, 3]
# Note that, 20 is greater than all the elements to it's
# right side, similarly 15 and so on.

leader([2, 3, 20, 15, 8, 25, 3]) ➞ [25, 3]
# Note that, 20 cannot be added because 25 is present,
# which is greater than 20.

leader([1, 2, 3, 4, 5]) ➞ [5]
=end

def leader(array)
  largest = array[0]
  largest_position = 0

  array.each_with_index do |number, index|
    if number > largest
      largest = number
      largest_position = index
    end
  end

  array[largest_position..-1]
end

print leader([2, 3, 20, 15, 8, 3])
puts ""

print leader([2, 3, 20, 15, 8, 25, 3])
puts ""

print leader([1, 2, 3, 4, 5])
