def stock_picker(array)
    best_trade = -1
    best_buy_index = nil
    best_sell_index = nil
    array.each_with_index do |buy, buy_index|
        array.slice(buy_index, array.size).each_with_index do |sell, sell_index|
            if sell - buy > best_trade
                best_trade = sell - buy
                best_buy_index = buy_index
                best_sell_index = sell_index + buy_index
            end
        end
    end
        puts "[#{best_buy_index},#{best_sell_index}] for a profit of #{best_trade}"
    end