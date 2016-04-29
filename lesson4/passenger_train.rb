# coding: utf-8

class PassengerTrain < Train

  def initialize(train_number, train_type = :passenger, car_count)
    super
    puts "Создан пассажирский поезд №#{train_number}, кол-во вагонов #{car_count}"
  end

end

