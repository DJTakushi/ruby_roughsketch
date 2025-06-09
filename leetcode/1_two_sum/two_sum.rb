require 'debug'
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  # binding.break

  # nums.each_with_index do |n1, idx1|
  for i in 0...nums.length
    # nums.each_with_index do |n2, idx2|
    for j in (i + 1)...nums.length
      if (nums[i] + nums[j] == target)
        return [i,j]
      end
    end
  end
end


# two_sum([3, 2, 4], 6)
