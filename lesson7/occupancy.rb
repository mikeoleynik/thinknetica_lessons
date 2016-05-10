module Occupancy
  def self.included(base)
    base.send :include, InstanceMethods
  end

  module InstanceMethods
    attr_accessor :occupied # занятый

    def occupy # заполняет
      @occupied ||= 0
      @occupied += 1
    end

    def available # доступный
      @occupied ||= 0
      capacity - @occupied
    end

  end
     
end 

#    Для пассажирских вагонов:
# Добавить атрибут общего кол-ва мест (задается при создании вагона)
# Добавить метод, который "занимает места" в вагоне (по одному за раз)
# Добавить метод, который возвращает кол-во занятых мест в вагоне
# Добавить метод, возвращающий кол-во свободных мест в вагоне.

# Для грузовых вагонов:
# Добавить атрибут общего объема (задается при создании вагона)
# Добавить метод, которые "занимает объем" в вагоне (объем указывается в качестве параметра метода)
# Добавить метод, который возвращает занятый объем
# Добавить метод, который возвращает оставшийся (доступный) объем