# coding: utf-8

total_price = 0

loop do
  puts "Введите название товара (или stop для выхода)"
  items = gets.chomp
break if items == "stop"
  puts "Введите цену товара"
  price = gets.chomp.to_f
  puts "Введите кол-во товара"
  number = gets.chomp.to_f

  hash = { items => {price: price, number: number} }


hash.each do |name, general|
	sum = general[:price]*general[:number]
	total_price += sum

puts "Итоговая сумма за каждый товар: #{sum}"
puts "Итоговая сумма за все покупки: #{total_price}"
puts "#{hash}"

  end
end