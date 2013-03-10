require 'serializer/mechanism'
require 'serializer/interface'

module Serializer
  
  # The base class for errors.
  class Error < StandardError; end
  
  # Raised for abstrace methods.
  class NotImplementedError < Error; end
  
  # Raised when an invalid mechanism is passed to the Interface.
  class InvalidMechanismError < Error
    
    # @param mechanism The object to check to see if it is a Serializer::Mechanism.
    # @raise [InvalidMechanismError] When the mechanism is not a Serializer::Mechanism.
    def self.check(mechanism)
      raise self unless mechanism.is_a?(Mechanism)
    end
    
    # @return [String] The error message.
    def to_s
      '`mechanism` must be an instance of Serializer::Mechanism'
    end
    
  end
  
  # Raised when an invalid mechanism is passed to the Interface.
  class InvalidInterfaceError < Error
    
    # @param interface The object to check to see if it is a Serializer::Interface.
    # @raise [InvalidInterfaceError] When the interface is not a Serializer::Interface.
    def self.check(interface)
      raise self unless mechanism.is_a?(Interface)
    end
    
    # @return [String] The error message.
    def to_s
      '`interface` must be an instance of Serializer::Interface'
    end
    
  end
  
  # Raised when a Mechanism's format is set to an invalid valid
  class InvalidFormatError < Error
    
    # @param format The object to check to see if it is a valid format.
    # @raise [InvalidFormatError] When the format is not valid.
    def self.check(format)
      raise self unless [:marshal, :json].include?(format)
    end
    
    # @return [String] The error message.
    def to_s
      '`format` must be one of `:marshal` or `:json`'
    end
    
  end
  
  # Raised when a Mechanism's format is set to an invalid valid
  class InvalidMechanismOptionsError < Error
    
    # @param options The object to check to see if it is a valid options for Mechanism.
    # @raise [InvalidMechanismOptionsError] When the options is not valid.
    def self.check(options)
      raise self unless options.has_key?(:format)
    end
    
    # @return [String] The error message.
    def to_s
      '`options` requires key `:format`'
    end
    
  end
  
end
