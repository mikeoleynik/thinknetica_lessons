# coding: utf-8

puts "Как тебя зовут?"
name = gets.chomp
puts "Какой у тебя рост?"
height = gets.chomp.to_i

ideal_weight = height - 110

if ideal_weight < 0 
  puts "ваш вес уже оптимальный"
else
  puts "#{name}, твой идеальный вес равен #{ideal_weight}"
end 