# coding: utf-8

class CargoTrain < Train

  def initialize(train_number, train_type = :cargo, car_count)
    super
    puts "Создан грузовой поезд №#{train_number}, кол-во вагонов #{car_count}"
  end

  def add_car_to_train
    @car_count += 1 if speed == 0
    puts "Добавлен грузовой вагон #{car_count} к грузовому поезду #{train_number}"     
  end

  def del_car_to_train
    @car_count -= 1 if speed == 0
    puts "В грузовом поезде #{train_number} теперь вагонов #{car_count} шт."
  end

end



