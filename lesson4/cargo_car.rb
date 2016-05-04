# coding: utf-8

require_relative "./train.rb"

class CargoCar < Cars
 
  def initialize(number, type_car = :cargo)
    super     
  end

	def add_car(car, type_car = :cargo) # метод переопределен?
    super
  end

end