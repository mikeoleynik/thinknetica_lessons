# coding: utf-8


puts "Введите день:"
day = gets.chomp.to_i
puts "Введите месяц"
month = gets.chomp.to_i
puts "введите год"
year = gets.chomp.to_i

def date(day, month, year)
  days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  days[1] = 29 if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
  date = 0
    for i in 1...month
      date += days[i - 1]
    end
  date + day
end

puts "Порядковый номер даты: #{date(day, month, year)}."