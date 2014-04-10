def find_best_buy_sell(stockPrices)
  max = {m: stockPrices.length - 1, p: stockPrices.last}
  max_profit = nil
  stockPrices.reverse.each_with_index do |p, m|
    new_m = stockPrices.length - m
    if max[:p] < p
      max[:p] = p
      max[:m] = new_m 
    end
    if max_profit != nil
      profit = max[:p] - p
      if max_profit[:profit] < profit
        max_profit = {buy: new_m, sell: max[:m], profit: profit}
      end
    else
      max_profit = {buy: new_m, sell: max[:m], profit: max[:m] - p}
    end
  end
  return max_profit
end

i = 0
stockPrices = []
while i < 50
  stockPrices.push(rand(400))
  i += 1
end
puts "prices " + stockPrices.to_s
puts "Best:"
puts find_best_buy_sell(stockPrices)