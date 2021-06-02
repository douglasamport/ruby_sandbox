require 'pry'
require 'pry-byebug'

arr = [5, 2, 7, 11, 30, 29, 1, 5, 7, 3, 8, 7, 9, 6, 0]
arr_two = [2, 3]

def add_two(one, two, array = [])
  two = [] if two.nil?
  one = [] if one.nil?
  array << one.shift if two.empty? && !one.empty? # <<___problem here
  array << two.shift if one.empty? && !two.empty? # <<___or Here has to do with nil values
  array.compact! if array.include?(nil)

  return array if one.empty? && two.empty?
#binding.pry
  if one[0] < two[0]
    array << one.shift
  else
    array << two.shift
  end
    
  add_two(one, two, array)
 
end

def half_arr(arr, new_array =[] )
  
  if arr.length > 2
    one, two = arr.each_slice( (arr.length/2.0).round).to_a
    new_array = [half_arr(one), half_arr(two)]
  else
    one, two = arr.each_slice( (arr.length/2.0).round).to_a

   return  add_two(one, two)
  end
 
end

p half_arr(arr)



# def half_arr(arr, new =)
#   empty = []
#   if arr.length > 1
#     arr.each_slice( (arr.length/2.0).round) { |a| empty << half_arr(a)}
#   else
#     empty << arr[0]
#   end
#   empty
# end

# p half_arr(arr)
# to_merge = half_arr(arr)




# def merge_sort(arr)
  
#   if arr.length > 1
#   arr = arr.each_slice( (arr.length/2.0).round ).to_a
#   arr.map! { |a| merge_sort(a)}
#   else
#     if arr.length == 1
#       arr.map.with_index do |var, idx|
#         if var > var[idx + 1]
#           var[idx +1] << var
#         else
#            var << var[idx +1]
#         end
#       end
#     end
#   end
  
  

# end

# p merge_sort(arr)





# def merge_sort(arr)
  
#   if arr.length > 1
#   arr = arr.each_slice( (arr.length/2.0).round ).to_a
#   arr.map! { |a| merge_sort(a)}
#   else
#     if arr.length == 1
#   end
#   arr.each_with_index do |var, idx|
#     puts "#{var}, #{idx}"
    
#   end

# end