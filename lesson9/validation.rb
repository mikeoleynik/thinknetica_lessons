module Validation
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    def validate(name, *args)
      validates_name = '@validates'
      instance_variable_set(validates_name, {}) unless instance_variable_defined?(validates_name)
      instance_variable_get(validates_name)[name] = *args
    end
  end

  module InstanceMethods
    def validate!
      vars = self.class.instance_variable_get('@validates')
        vars.each do |name, args|
          @value = instance_variable_get('@#{validates}')
          @param = args[1]
      end
      true
    end

    def valid?
      validate!
    rescue ArgumentError
      false
    end

    private

    def validate_presence(name)
      fail "Argument is empty string" if @value.nil? || @value.empty?
    end

    def validate_format(name, format)
      fail "Invalid format" unless @value =~ format
    end

    def validate_type(name, type)
      fail "Invalid type" if value != type_class      
    end
  end
end
