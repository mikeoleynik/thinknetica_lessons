class Cars 
  attr_reader :type

  def initialize(number, type_car)
    @number = number
    puts "Создан вагон №#{@number} типа #{type_car}"      
  end

end