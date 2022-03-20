def stock_picker(prices)

    # initialize w/ first element on array
    buy = prices[0]
    buy_index = 0
  
    # set trackers for maximum profit re: best day's index
    max_profit = 0
    best_days = [0, 0]
  
    # iterate thru every price
    prices.each_with_index do |price, index|
      if (price < buy)
        buy = price
        buy_index = index
        next
      end
      
      if (price - buy > max_profit)
        max_profit = price - buy
        best_days = [buy_index, index]
      end
    end
    
    # return results
    best_days    
  end
  
  prices = [17, 3, 6, 9, 15, 8, 5, 1, 10]
  p stock_picker(prices)