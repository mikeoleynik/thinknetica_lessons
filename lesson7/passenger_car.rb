# coding: utf-8

class PassengerCar < Cars

  def initialize(number, type_car = :passenger)
    super   
  end

  def add_car(car, type_car = :cargo)
    super
  end
  
end


# Для пассажирских вагонов:
# Добавить атрибут общего кол-ва мест (задается при создании вагона)
# Добавить метод, который "занимает места" в вагоне (по одному за раз)
# Добавить метод, который возвращает кол-во занятых мест в вагоне
# Добавить метод, возвращающий кол-во свободных мест в вагоне.