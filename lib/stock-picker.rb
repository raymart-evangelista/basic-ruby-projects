def stock_picker(stock_prices)
  # pick current index and check if higher sell day than current
  profit_days = []
  lowest_buy_day = 0
  highest_sell_day = 0
  profit = 0

  # the outer block will use the current price and day and go in the inner block to compare profits of the following hypothetical days
  stock_prices.each_with_index do |curr_price, curr_day|
    # puts "\ncurr_price: #{curr_price}, curr_day: #{curr_day}"
    stock_prices.each_with_index do |next_price, next_day|

      # this conditional ensures that we are only comparing the following hypothetical days to the current day
      if curr_day < next_day

        # puts "next_price - curr_price: #{next_price-curr_price}"
        # this conditional will save the days and profit if the profit is greater than the current profit
        if next_price - curr_price > profit
          profit = next_price - curr_price
          lowest_buy_day = curr_day
          highest_sell_day = next_day
        end
      end
    end
    
  end

  # p "lowest_buy_day: #{lowest_buy_day}"
  # p "highest_sell_day: #{highest_sell_day}"
  # p "profit: #{profit}"

  profit_days.push(lowest_buy_day)
  profit_days.push(highest_sell_day)

  return profit_days


end

# original stock prices
prices1 = [17,3,6,9,15,8,6,10]

# stock prices with lowest day as last day nad highest day as first day
prices2= [400,17,3,6,9,15,8,6,10,1]


p stock_picker(prices1)
# should return [1,4]

p stock_picker(prices2)
# should return [2,5]

# buy before sell
                                