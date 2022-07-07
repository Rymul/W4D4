class Hanoi
    require "byebug"

    attr_reader :disks
    attr_accessor :stacks
    def initialize
        @disks = (1..3).to_a.reverse
        @stacks = [@disks, [], []]
    end

    def get_answer
        # begin
            puts "Enter start tower (1-3):"
            answer_1 = gets.chomp.to_i
            start_i = answer_1-1
            raise "That is an invalid tower!" if answer_1 > 3 || answer_1 < 1
            raise "You can't move from an empty tower!" if stacks[start_i].empty?

            puts "Enter tower to move to (1-3):"
            answer_2 = gets.chomp.to_i
            end_i = answer_2-1
            raise "That is an invalid tower!" if answer_1 > 3 || answer_1 < 1
        # rescue    
            raise "You can't move from and to the same tower!" if answer_1 == answer_2
        # retry
            selected_disk = stacks[start_i].pop
            stacks[end_i] << selected_disk
            self.win?
            raise "You can't move onto a smaller disk" if !stacks[end_i].empty? && selected_disk > stacks[end_i].last
            
        # end
    end

    # def move_disks
    #     selected_disk = stacks[answer_1 - 1].pop
    #     stacks[answer_2 - 1].push(selected_disk)
    # end

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


game = Hanoi.new
p game.play