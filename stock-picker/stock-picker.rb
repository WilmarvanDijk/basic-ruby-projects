def stockPicker(stockPrices)
    oldProfit = 0
    mostProfitAtIndex = []
    
    stockPrices.each_with_index do |buyingPrice, buyingIndex|
        stockPrices.each_with_index do |sellingPrice, sellingIndex|
            newProfit = sellingPrice - buyingPrice

            if (newProfit > oldProfit) && (sellingIndex > buyingIndex)
                oldProfit = newProfit
                mostProfitAtIndex = [buyingIndex, sellingIndex]
            end

        end
    end
    mostProfitAtIndex
end

p stockPicker([17,3,6,9,15,8,6,1,10])