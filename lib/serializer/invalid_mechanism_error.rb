require 'serializer/error'
require 'serializer/mechanism'

module Serializer
  
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
    
end
