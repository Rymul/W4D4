require "towers_of_hanoi.rb"


describe Hanoi do
    
    subject(:hanoi) {Hanoi.new}

    describe '#initialize' do
        context 'with valid arguments' do
            it 'instantiates a game with correct getter for disks' do
                expect(hanoi.disks).to eq([3,2,1])
            end
            it 'instantiates a game with correct getter for stacks' do
                expect(hanoi.stacks).to eq([[3,2,1],[],[]])
            end
        end
    end

    describe '#stacks=' do
        before(:each) {hanoi.stacks = [[3,2,1],[],[]]}
        it 'correctly assigns stacks' do
            hanoi.stacks = [[3,2],[1],[]]
            expect(hanoi.stacks).to eq([[3,2],[1],[]])
        end
        it 'still works' do
            expect(hanoi.stacks).to eq([[3,2,1],[],[]])
        end
    end

    describe '#get_answer' do
        # it 'should print:"Enter start tower and a tower to move to (1-3) in the form of 1,2:"' do
        # input = double("1,2\n", :chomp=>"1,2")
        # allow(hanoi).to receive(:gets).and_return(input)
        #     expect(hanoi.get_answer).to output(/Enter start tower/).to_stdout
        # end
        it 'should call gets.chomp to get answer from user' do
            input = double("1,2\n", :chomp=>"1,2")
            allow(hanoi).to receive(:gets).and_return(input)
            expect(input).to receive(:chomp)
            expect(hanoi).to receive(:gets)
            hanoi.get_answer
        end
    end
    
end