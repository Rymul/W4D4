class Hanoi
    require "byebug"

    attr_reader :disks
    attr_accessor :stacks
    def initialize
        @disks = (1..3).to_a.reverse
        @stacks = [@disks, [], []]
    end

    def get_answer
        puts "Enter start tower and a tower to move to (1-3) in the form of 1,2:"
        answer = gets.chomp.split(",").map {|ele| ele.to_i}
        answer_1 = answer[0]-1
        answer_2 = answer[1]-1
        raise "That is an invalid tower!" if answer_1 > 2 || answer_1 < 0
        raise "You can't move from an empty tower!" if stacks[answer_1].empty?
        raise "You can't move from and to the same tower!" if answer_1 == answer_2
        raise "You can't move onto a smaller disk" if !stacks[answer_2].empty? && stacks[answer_1].last > stacks[answer_2].last
    end

    def move_disks
        selected_disk = stacks[answer_1].pop
        stacks[answer_2] << selected_disk
    end

    def win?
        if stacks.last == disks
            puts "YOU WIN!!!"
            return true
        else
            return false
        end
    end

    def render
        puts "-----------------"
        stacks.each do |subarr|
            puts subarr.join(" ").to_s
        # puts self.stacks
        end
        puts "-----------------"
    end
    
    def play
        while !self.win?
            self.render
            self.get_answer
            self.win?
        end
    end
end

