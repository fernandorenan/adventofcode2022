



# R > S
# S > P 
# P > R

# First Column        Second Column
# A Rock                  X
# B Paper                 Y   
# C Scissors              Z


# 1 rock  2 paper  3  scissor   +    0 lost 3 draw  6 won


file_path = File.expand_path("../input.txt", __FILE__)
input     = File.read(file_path)

def to_point(element)
   case element
   when 'A', 'X'
    1
   when 'B', 'Y'
    2
   when 'C', 'Z'
    3
   end
end

def compare_winner(hand)
    if hand[0]> hand[1]
     0
    elsif hand[0] < hand[1]
     6  
    else hand[0] == hand[1]
     3   
    end
end

#arr_elves = input.split("\n\n").map{|calories| calories.split.map(&:to_i).sum}
arr_elves = input.split("\n").map{|games| games.split(" ").map(&method(:to_point))}

puts compare_winner(arr_elves.last) + (arr_elves.last[1])