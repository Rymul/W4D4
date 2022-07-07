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
        
    end
    
end