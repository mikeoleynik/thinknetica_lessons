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