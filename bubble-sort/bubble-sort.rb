def  bubble_sort(arr)
    n = arr.length - 1
    n.times do
        arr.each_with_index do |data, key|
          next_index = key + 1
          if next_index == arr.length
            break
          end
          if arr[key] > arr[key+1]
            arr[key], arr[key+1] = arr[key+1], arr[key]
           end
        end
      end
      p arr
end

arr = [4,3,78,2,0,2,-1]

bubble_sort(arr)