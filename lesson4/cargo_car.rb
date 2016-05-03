# coding: utf-8

class CargoCar < Cars
	attr_accessor :type_car

  def initialize(number, type_car = :cargo)
    super
    # self.cars_arr << CargoCar.new(number)      
  end

end