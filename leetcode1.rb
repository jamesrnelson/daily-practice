require 'pry'

def find_median_sorted_arrays(nums1, nums2)
    if nums1.length > nums2.length
      array = nums1.zip(nums2).flatten.compact
    else
      array = nums2.zip(nums1).flatten.compact
    end
    sorted_array = array.sort
    if sorted_array.length % 2 == 0
      index = (sorted_array.length.to_f/2).floor - 1
      (sorted_array[index].to_f + sorted_array[index + 1].to_f) / 2
    else
      index = (sorted_array.length.to_f/2).floor
      sorted_array[index]
    end
end

# def merge_sort(array)
#     if array.length <= 1
#         array
#     else
#         midpoint = (array.length.to_f/2).floor
#         left = merge_sort(array[0..midpoint-1])
#         right = merge_sort(array[midpoint..array.length])
#         merge(left, right)
#     end
# end
#
# def merge(left, right)
#     binding.pry
#     if left.empty?
#         right
#     elsif right.empty?
#         left
#     elsif left[0] < right[0]
#         [left[0]] + merge(left[1..left.length], right)
#     else
#         [right[0]] + merge(left, right[1..right.length])
#     end
# end

nums1 = []
nums2 = [1]

find_median_sorted_arrays(nums1, nums2)
