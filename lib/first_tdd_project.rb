
def my_uniq(arr)
    new_arr = []
    arr.each do |ele|
        unless new_arr.include?(ele)
            new_arr << ele
        end
    end
    new_arr
end

class Array

    def two_sum
        new_arr = []
        (0...self.length).each do |i|
            (i+1...self.length).each do |j|
                if self[i] + self[j] == 0
                    new_arr << [i, j]
                end
            end
        end
        new_arr
    end
end

def my_transpose(grid)
    arr = []
    (0...grid.length).each do |i|
        temp = []
        grid.each_with_index do |subarr, j|
            temp << subarr[i]
        end
        arr << temp
    end
    arr
end

def stock_picker(arr)
    hash = Hash.new {|h,k| h[k] = []}

    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            hash[[i,j]] = arr[j] - arr[i]
        end
    end
    hash.sort_by {|k,v| v}[-1][0]
end


