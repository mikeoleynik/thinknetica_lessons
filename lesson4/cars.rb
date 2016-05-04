# coding: utf-8
require_relative "./train.rb"

class Cars
 attr_accessor :type_car

  def initialize(number, type_car)
    @number = number
    puts "Создан вагон №#{@number} типа #{type_car}"   
  end

def add_car(car, type_car) # принимает в качестве аргумента сам объект вагона (Как?)
      if speed == 0 && type_car == "cargo"
        @car_count += 1     
        puts "Добавлен грузовой вагон #{car_count} к грузовому поезду #{train_number}"
        @cars_arr << car 
      elsif speed == 0 && type_car == "passenger"
        @car_count += 1     
        puts "Добавлен пассажирский вагон #{car_count} к пассажирскому поезду #{train_number}"    
      end
  end
  
end