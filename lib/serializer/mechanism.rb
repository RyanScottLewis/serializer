require 'forwardable'
require 'serializer/helpers'

module Serializer
  
  # The mechanism to utilize an {Interface}.
  class Mechanism
    extend Forwardable
    include Helpers
    
    attr_reader :format
    attr_accessor :engine
    
    delegate [:dump, :encode, :serialize]   => :@interface
    delegate [:load, :decode, :deserialize] => :@interface
    
    # @param [Hash, #to_hash, #to_h] options The options for the Mechanism.
    # @option options [Symbol] :format Chooses which interface to use with this Mechanism.
    # @raise [InvalidMechanismOptionsError]
    def initialize(options={})
      options = validate_options(options)
      InvalidMechanismOptionsError.check(options)
      
      self.format = options[:format]
    end

    # @param [Symbol] format The new format to serialze and deserialize with.
    # @raise [InvalidFormatError] When the new format is not valid.
    def format=(format)
      InvalidFormatError.check(format)
      
      require "serializer/#{ format }"
      
      @format = format
      @interface = self.class.const_get("Serializer::#{format.capitalize}").new(self)
    end
    
  end

end
