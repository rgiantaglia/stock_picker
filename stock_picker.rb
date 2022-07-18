def stock_picker(arr)

    matrix = arr.map do |x|
         arr.map do |y|
             new_arr = y-x
            end
        end
    index = matrix.map.with_index {|v, i| i}
    diagonal = index.map {|value| matrix[value].select.with_index {|x,i| i>value}}
    arr_of_max = diagonal.map {|z| z.max}
    max_value = arr_of_max.compact.max

    min = arr_of_max.find_index(max_value)
    max = matrix[min].find_index(max_value)

    days = [min, max]
end



days = stock_picker([17,3,6,9,15,8,6,1,10])
puts "The best day to buy is day #{days[0]} and the best day to sell is day #{days[1]}"
