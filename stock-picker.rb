def stock_picker(stock_prices)
  # pick current index and check if higher sell day than current
  lowest_buy_day = 0
  highest_sell_day = 0
  profit = 0
  stock_prices.each_with_index do |curr_price, curr_day|
    puts "\ncurr_price: #{curr_price}, curr_day: #{curr_day}"
    stock_prices.each_with_index do |next_price, next_day|

      if curr_day < next_day
        
        puts "next_price - curr_price: #{next_price-curr_price}"
        if next_price - curr_price > profit
          profit = next_price - curr_price
          lowest_buy_day = curr_day
          highest_sell_day = next_day
        end
      end
    end
    
  end

  p "lowest_buy_day: #{lowest_buy_day}"
  p "highest_sell_day: #{highest_sell_day}"
  p "profit: #{profit}"


end



prices = [17,3,6,9,15,8,6,10]
stock_picker(prices)
# should return [1,4]

# buy before sell
                                