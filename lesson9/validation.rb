module Validation
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    def validate(name, *args)
      validates_name = '@validates'
      instance_variable_set(validates_name, {}) unless instance_variable_defined?(validates_name)
      instance_variable_get(validates_name)[name] = args
    end
  end

  module InstanceMethods
    def validate!
      vars = self.class.instance_variable_get('@validates')
        vars.each do |attr, args|
          value = instance_variable_get("@#{attr}")
          validator = args.first
          send "validate_#{validator}", args[1..-1]
        end
      true
    end

    def valid?
      validate!
    rescue ArgumentError
      false
    end

    private

    def validate_presence(value, *args)
      fail "Argument is empty string" if value.nil? || value.empty?
    end

    def validate_format(value, *args)
      fail "Invalid format" unless value =~ args.first
    end

    def validate_type(value, *args)
      fail "Invalid type" if value != args.first      
    end
  end
end
