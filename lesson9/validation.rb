module Validation
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    def self.validate()
      validate :name, :presence
      validate :number, :format, /A-Z{0,3}/
      validate :station, :type, RailwayStation
    end
  end

  module InstanceMethods
    def validate!
      validate
    end

    def valid?
     true if validate 
    end
  end
end
