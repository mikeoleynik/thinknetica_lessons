# coding: utf-8
require_relative "./train.rb"

class Cars
 attr_accessor :type_car

  def initialize(number, type_car)
    @number = number
    puts "Создан вагон №#{@number} типа #{type_car}"  
    @cars_arr = []    
  end

end