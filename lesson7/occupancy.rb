module Occupancy
  attr_accessor :occupied, :capacity # занятый, вместимость

  def occupy # заполняет
    @occupied ||= 0
    @occupied += 1
  end

  def available # доступный
    @occupied ||= 0
    capacity - @occupied
  end
end