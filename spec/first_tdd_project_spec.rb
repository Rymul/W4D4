require 'first_tdd_project.rb'

describe 'my_uniq' do

    it 'should accept an array and return a new array' do
        arr_1 = [1,1,2,3,4,4,5]
        my_uniq(arr_1)
        expect(my_uniq(arr_1)).to_not be(arr_1)
    end

    it 'should return a new array with unique elements' do
        arr_1 = [1,1,2,3,4,4,5]
        my_uniq(arr_1)
        expect(my_uniq(arr_1)).to eq([1,2,3,4,5])
    end

    it 'should not use Array#uniq' do
        arr_1 = [1,1,2,3,4,4,5]
        my_uniq(arr_1)
        expect(arr_1).to_not receive(:uniq)
    end
end

describe Array do
    let(:arr) {[-1,-5,2,1,4,5]}
    it 'should accept an array and return a new array' do
        expect(arr.two_sum).to_not be(arr)
    end

    it 'should return the index where elements add to 0' do
        expect(arr.two_sum).to eq([[0,3],[1,5]])
    end
end

describe 'my_transpose' do
    let(:rows) {[[0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]]}
    let(:col) {[
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
      ]}
    it 'should not use built in method Array#transpose' do
        expect(rows).to_not receive(:transpose)
    end

    it 'should transpose the matrix' do
        expect(my_transpose(rows)).to eq(col)
    end
end

describe 'stock_picker' do
    let(:arr) {[2,1,3,5,2,4,9,8,7]}

    it 'should return the indexes of which pair has the greatest difference' do 
        expect(stock_picker(arr)).to eq([1,6])
    end

end

