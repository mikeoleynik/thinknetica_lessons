# coding: utf-8

puts "Дай мне основание"
base = gets.chomp.to_f
puts "Покажи мне высоту"
height = gets.chomp.to_f

square = 1/2.to_f*base*height # Можно сделать через 0.5, но мне показалось это подгон под ответ

puts "Площадь треугольника равна #{square}"