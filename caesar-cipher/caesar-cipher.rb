def  caesar (text,  num)
    arr = text.bytes
    arr1 = arr.map do |values|
        if values >= 65 && values <= 90
            if  values + num > 90 
                va = 90 - values
                va1 = num - va -1
                values = 65 + va1 
            else
                values = values + num
            end
        end
        if values >= 97 && values <= 122
            if  values + num > 122 
                val = 122 - values
                val1 = num - val -1
                values = 97 + val1 
            else
                values = values + num
            end
        else
            values
        end
    end
    puts arr1.pack("c*")
end

caesar("What a string!", 5)