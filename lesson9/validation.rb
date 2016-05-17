module Validation
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    def self.validate(имя_проверяемого_атрибута)
      validate :name, :presence
      validate :number, :format, /A-Z{0,3}/
      validate :station, :type, RailwayStation
    end
  end

  module InstanceMethods
    def validate!
      self.validate
    end

    def valid?
      validate!
    rescue
      false
    end

  private
  def presence
    value = 
    fail "skdjfhsd" if value.nil? || value.empty?
  end

  def format
    value = 
    fail "dasdasda" if 
  end

  def type
    fail "Wrong Format" if /A-Z{0,3}/
  end
  end
end
