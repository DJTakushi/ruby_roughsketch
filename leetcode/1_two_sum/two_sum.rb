require 'debug'
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  # binding.break

  nums.each_with_index do |n1, idx1|
    nums.each_with_index do |n2, idx2|
      if n1 + n2 == target
        return [idx1,idx2]
      end
    end
  end
end



# two_sum([2, 7, 11, 15], 9)
