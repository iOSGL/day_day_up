#
# @lc app=leetcode.cn id=1 lang=ruby
#
# [1] 两数之和
#



# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# 解法1 利用 hasH
# def two_sum(nums, target)
#     h = Hash.new
#     nums.each_index do |i| 
#         v = nums[i]
#         a = target - v
#         if h.keys.include?(a)
#             return [h[a], i]
#         end
#         h[v] = i
#     end
# end

# def two_sum(nums, target)
#     for i in 0...nums.count - 1 do
#         t = target - nums[i]

#         for j in i+1...nums.count do
#             if t == nums[j]
#                 return [i, j]
#             end
#         end
#     end
# end

def two_sum(nums, target)
    search = Hash.new
    nums.each_with_index do |item, index|
        i = search[target - item]
        return [i, index] if i != nil
        search[item] = index
    end
end

a = two_sum([2,5,5,11], 10)
p a

# @lc code=end

