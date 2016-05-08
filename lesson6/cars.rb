# coding: utf-8
require_relative "./train.rb"

class Cars
  include Company 
  attr_accessor :number, :type_car

  def initialize(number, type_car)
    @number = number
    puts "Создан вагон №#{@number} типа #{type_car}"   
  end

def validate!
  raise "sfdsf" if number.nil? # на наличие атрибутов
  raise "sfdsf" if type_car.nil? # на наличие атрибутов
  raise "sfdsf" if number.length < 99  # на длину номера 
  raise "sfdsf" if /^\d{2}/ # на правильное название номера (только цифры)
end

 end