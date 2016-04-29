# coding: utf-8

class CargoTrain < Train

  def initialize(train_number, train_type = :cargo, car_count)
    super
    puts "Создан грузовой поезд №#{train_number}, кол-во вагонов #{car_count}"
  end

end
# coding: utf-8

