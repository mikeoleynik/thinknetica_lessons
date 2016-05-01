# coding: utf-8

puts "Первый коэффициент"
a = gets.chomp.to_f
puts "Второй коэффициент"
b = gets.chomp.to_f
puts "Третий коэффициент"
c = gets.chomp.to_f

d = b**2-4*a*c

if d > 0 
  y = Math.sqrt(d)
  x1 = (-b+y)/(2*a)
  x2 = (-b-y)/(2*a)
  puts "#{d} и #{x1} и #{x2}"
end

if d == 0 
  c = 0 
  x1 = x2 = -b/(2*a)
  puts "#{d} и #{x1}"
end

if d < 0
  puts "#{d} и корней нет"
end