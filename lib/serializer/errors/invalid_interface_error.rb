require 'serializer/errors/base'
require 'serializer/interface'

module Serializer
  module Errors
    
    # Raised when an invalid mechanism is passed to the Interface.
    class InvalidInterfaceError < Base
      
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
end
