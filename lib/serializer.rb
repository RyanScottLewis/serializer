require 'version'
require 'serializer/mechanism'

# An interface to several serialization mechanism interfaces. An interface-interface.
module Serializer
  
  is_versioned
  
  # Initialize a new Serializer::Mechanism
  def self.new(options={})
    Mechanism.new(options)
  end
  
end
