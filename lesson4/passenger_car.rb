# coding: utf-8

class PassengerCar < Cars

  def initialize(number, type_car = :passenger)
    @number = number
    puts "Создан вагон №#{@number} типа #{type_car}"      
  end

end