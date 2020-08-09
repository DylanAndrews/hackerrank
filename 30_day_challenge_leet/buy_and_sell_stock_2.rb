require 'pry'

# Say you have an array prices for which the ith element is the price of a given stock on day i.
#
# Design an algorithm to find the maximum profit. You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times).
#
# Note: You may not engage in multiple transactions at the same time (i.e., you must sell the stock before you buy again).
#
# Example 1:
#
# Input: [7,1,5,3,6,4]
# Output: 7
# Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
#              Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.
# Example 2:
#
# Input: [1,2,3,4,5]
# Output: 4
# Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
#              Note that you cannot buy on day 1, buy on day 2 and sell them later, as you are
#              engaging multiple transactions at the same time. You must sell before buying again.
# Example 3:
#
# Input: [7,6,4,3,1]
# Output: 0
# Explanation: In this case, no transaction is done, i.e. max profit = 0.
#
#
# Constraints:
#
# 1 <= prices.length <= 3 * 10 ^ 4
# 0 <= prices[i] <= 10 ^ 4

# Get all profitable day pairs [[2,3],[4,5]]. Could also be { 'sum_for_day' => [2,3]}
# If days don't overlap, add profits
# If buy sell days do overlap, pick the day that has the most profit

# Good - not mine
def max_profit(prices)
   return 0 if prices.length < 2

   bought_share = false
   money = 0
   i = 0

   while i < prices.length - 1
    if prices[i] < prices[i + 1] && !bought_share
      bought_share = true
      money -= prices[i]
    end
    if prices[i] > prices[i + 1] && bought_share
      bought_share = false
      money += prices[i]
    end
    i += 1
  end

  money += prices[i] if bought_share
  money
end

# Great - not mine
def max_profit(prices)
  profit = 0

  prices.each_with_index do |price, i|
    if prices[i + 1] && price < prices[i + 1]
      profit += (prices[i + 1] - price)
    end
  end

  profit
end

puts max_profit([7,1,5,3,6,4])
