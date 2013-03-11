require 'serializer/error'
require 'serializer/interface'

module Serializer
  
  # Raised when an invalid mechanism is passed to the Interface.
  class InvalidInterfaceError < Error
    
    # @param interface The object to check to see if it is a Serializer::Interface.
    # @raise [InvalidInterfaceError] When the interface is not a Serializer::Interface.
    def self.check(interface)
      # raise self unless interface.is_a?(Interface)
      raise self unless interface.is_a?(Class) && interface < Interface
    end
    
    # @return [String] The error message.
    def to_s
      '`interface` must be a Serializer::Interface'
    end
    
  end
  
end
