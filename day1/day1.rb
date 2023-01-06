#   lines = ''
#   File.open("/mnt/d/Users/fernando.renan/Documents/aprendizado/adventofcode2022/adventofcode2022/day1/input.txt") do |input_file|
#      lines = input_file.readlines
#   end

file_path = File.expand_path("../input.txt", __FILE__)
input     = File.read(file_path)


arr_elves = input.split("\n\n").map{|calories| calories.split.map(&:to_i).sum}
 
puts "The answer of part 1 : #{arr_elves.max}"

puts "The answer of part 2 : #{arr_elves.sort.last(3).sum}"
