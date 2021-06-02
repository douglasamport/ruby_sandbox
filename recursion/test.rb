require 'pry'
require 'pry-byebug'

arr_one = [1, 4, 6]
arr_two = [3, 5]

def add_two(one, two, array = [])
  array << one.shift if two.empty?
  array << two.shift if one.empty? 
  array.compact! if array.include?(nil)

  return array if one.empty? && two.empty?

  array << one[0] < two[0] ? one.shift : two.shift
    
  add_two(one, two, array)
 
end
    


p add_two(arr_one, arr_two)

