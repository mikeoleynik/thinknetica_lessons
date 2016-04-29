class CargoCar < Cars

  def initialize(number, type_car = "cargo")
    @number = number
    puts "Создан вагон №#{@number} типа #{@type_car}"      
  end

end