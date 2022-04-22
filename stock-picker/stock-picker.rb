def stock_picker(price)
    arr = []
    
    arr2 = [0, 0]
    
    buy_day = 0
    
    for num in price
      a = arr.push(num)
      price.each_with_index  do |value, sell_day|
          if price.find_index(value) < buy_day
            next
          elsif value - arr[0] < price[arr2[1]] - price[arr2[0]]
            next
          elsif value - arr[0] > price[arr2[1]] - price[arr2[0]]
            arr2 = []
            arr2 << buy_day
            arr2 << sell_day
          end
        end
        buy_day += 1
        arr.pop
    end 
    p arr2
    end
    
    price  = [17,3,6,9,15,8,6,1,10]
    stock_picker(price)