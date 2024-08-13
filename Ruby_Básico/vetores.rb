=begin
vetor[1,2,3,4,5]

hash = {"keys", "valor"}

hashes = {"a" => "1", "b" => "2"} #pode se escrever o hash assim
hashes ["a"] #forma de imprimir
hashes = {a: => "1", b: => "2"} #pode se escrever o hash assim também
hashes[:a] #forma de imprimir
=end

#vetor = [1,2,3,4,5,6,7,8,9,10,11]

#vetor.each do |i|
  #puts i 
#end

(1...5).each do |i|
  puts i
end

(1..5).each do |i|
  puts i
end

5.times {puts"Guilherme Lindo"}