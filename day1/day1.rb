#   lines = ''
#   File.open("/mnt/d/Users/fernando.renan/Documents/aprendizado/adventofcode2022/adventofcode2022/day1/input.txt") do |input_file|
#      lines = input_file.readlines
#   end

file_path = File.expand_path("../inputTest.txt", __FILE__)
input     = File.read(file_path)
 
puts input.split("\n\n").map{|calories| calories.split.map(&:to_i).sum}

 

# em progresso
# Somar calorias pulando linha vazia, separando as somas a cada linha vazia.
# Determinar qual maior soma

#somar cada linha enquanto não encontra uma vazia, 
#quando encontrar salvar a soma atual em um array, pular a linha em branco e iniciar uma nova soma.