# coding: utf-8

class PassengerTrain < Train

  def initialize(train_number, train_type = :passenger, car_count)
    super
    puts "Создан пассажирский поезд №#{train_number}, кол-во вагонов #{car_count}"
  end

  def add_car_to_train
    @car_count += 1 if speed == 0
    puts "Добавлен пассажирский вагон #{car_count} к пассажирскому поезду #{train_number}"     
  end

  def del_car_to_train
  	@car_count -= 1 if speed == 0
    puts "В пассажирском поезде #{train_number} теперь вагонов #{car_count} шт."
  end

end

