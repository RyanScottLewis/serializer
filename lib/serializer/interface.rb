require 'serializer/helpers'

module Serializer
  
  # The abstract class for serialization mechanism interface classes.
  class Interface
    include Helpers
    
    # @return [{ Symbol => Interface }] The list of registered Interfaces
    def self.interfaces
      @interfaces ||= {}
    end
    
    # Register a new interface.
    # @param [Interface] interface The interface to register.
    def self.register(interface)
      InvalidInterfaceError.check(interface)
      
      interfaces[interface.to_s.downcase.to_sym] = interface
    end
    
    # @!attribute [r] mechanism
    #   @return [Mechanism] The mechanism calling this interface.
    attr_reader :mechanism
    
    # @param [Mechanism] mechanism
    def initialize(mechanism)
      InvalidMechanismError.check(mechanism)
      
      @mechanism = mechanism
    end
    
    # @abstract Subclass and override {#dump} to implement an Interface class.
    # @param object The object to serialize.
    # @param [Hash, #to_hash, #to_h] options The options to pass to the serializer's interface.
    # @raise [NotImplementedError]
    def dump(object, options={})
      raise NotImplementedError
    end
    
    alias_method :encode,    :dump
    alias_method :serialize, :dump
    
    # @abstract Subclass and override {#load} to implement an Interface class.
    # @param object The object to deserialize.
    # @param [Hash, #to_hash, #to_h] options The options to pass to the serializer's interface.
    # @raise [NotImplementedError]
    def load(object, options={})
      raise NotImplementedError
    end
    
    alias_method :decode,      :load
    alias_method :deserialize, :load
    
  end
  
end
