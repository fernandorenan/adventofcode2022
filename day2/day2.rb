



# R > S
# S > P 
# P > R

# First Column        Second Column
# A Rock                  X
# B Paper                 Y   
# C Scissors              Z


# 1 rock  2 paper  3  scissor   +    0 lost 3 draw  6 won

#                                    use   match
# A Y    Rock x Paper Paper wins      2  +  6
# B X    Paper x Rock Paper wins      1  +  0
# C Z    Scissors x Scissors  draw    3  +  3


#file_path = File.expand_path("../inputTest.txt", __FILE__)
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

def compare_winner(game)
    if game[0]> game[1]
     0
    elsif game[0] < game[1]
     6  
    else game[0] == game[1]
     3   
    end
end

#arr_elves = input.split("\n\n").map{|calories| calories.split.map(&:to_i).sum}
match = input.split("\n").map{|games| games.split(" ")}
games = input.split("\n").map{|games| games.split(" ").map(&method(:to_point))}

arr_result = []

# games.each{ |game|
# arr_result << compare_winner(game) + game[1]
# }
# result = arr_result.sum
# puts result

games.each{ |game|
sum_result = compare_winner(game) + game[1]
arr_result << sum_result
}
result = arr_result.last
puts result

#puts compare_winner(arr_elves.last) + (arr_elves.last[1])