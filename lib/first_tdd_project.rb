
def my_uniq(arr)
    new_arr = []
    arr.each do |ele|
        unless new_arr.include?(ele)
            new_arr << ele
        end
    end
    new_arr
end