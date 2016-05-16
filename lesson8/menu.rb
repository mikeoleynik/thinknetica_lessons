# coding: utf-8

require_relative './company_name.rb'
require_relative './instance_counter.rb'
require_relative './train.rb'
require_relative './station.rb'
require_relative './route.rb'
require_relative './cars.rb'
require_relative './cargo_train.rb'
require_relative './passenger_train.rb'
require_relative './cargo_car.rb'
require_relative './passenger_car.rb'

station = Station.new('lubna')
station1 = Station.new('moscow')
station2 = Station.new('lipetsk')

train = PassengerTrain.new('123-EE')
train1 = PassengerTrain.new('153-EE')
train2 = CargoTrain.new('121-EE')

car = PassengerCar.new('22', 66)
car1 = PassengerCar.new('20', 66)
car2 = PassengerCar.new('30', 66)
car3 = CargoCar.new('22', 66)
car4 = CargoCar.new('20', 66)
car5 = CargoCar.new('30', 66)

station.add_train(train)
station1.add_train(train1)
station2.add_train(train2)

train.add_car(car)
train.add_car(car1)
train.add_car(car2)

train2.add_car(car3)
train2.add_car(car4)
train2.add_car(car5)

car.occupy
car.occupy

Station.all.each do |st|
  puts st.name
  st.trains_on_station do |tr|
    puts tr.train_number
    tr.cars_trains do |cr|
      puts "Номер вагона: #{cr.number}, Вместимость вагона: #{cr.capacity}," \
           " свободных мест: #{cr.available}, Занятых: #{cr.occupied}"
    end
  end
end
