def stock_picker(day_prices)
  best_days = nil
  best_price = nil

  0.upto(day_prices.size-1) do |index_a|
    index_a.upto(day_prices.size-1) do |index_b|
      profit = day_prices[index_b]-day_prices[index_a]
      if (profit > (!best_price ? 0 : best_price))
        best_price = profit
        best_days = [index_a, index_b]
      end
    end
  end
  best_days
end
