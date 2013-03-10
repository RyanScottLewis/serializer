require 'spec_helper'

class ObjectWithToH
  
  def to_h
    { foo: :bar }
  end
  
end

class ObjectWithToHash
  
  def to_hash
    { foo: :bar }
  end
  
end

class HashLikeObject < Hash
  
  def initialize
    replace(foo: :bar)
  end
  
end

class Helper
  
  include Serializer::Helpers
  
  # Exposes the protected #validate_options for testing
  def try(options={})
    validate_options(options)
  end
  
end

describe Helper do
  
  describe '#validate_options' do
    
    it "should convert the argument to a Hash, if it's not one already" do
      subject.try(foo: :bar).should            == { foo: :bar }
      subject.try(ObjectWithToH.new).should    == { foo: :bar }
      subject.try(ObjectWithToHash.new).should == { foo: :bar }
      subject.try(HashLikeObject.new).should   == { foo: :bar }
    end
    
    it 'should raise an error if a Hash-like object is not passed' do
      expect { subject.try(nil) }.to raise_error(Serializer::Error)
      expect { subject.try(123) }.to raise_error(Serializer::Error)
      expect { subject.try(1.2) }.to raise_error(Serializer::Error)
      expect { subject.try(:fi) }.to raise_error(Serializer::Error)
      expect { subject.try(Array.new) }.to  raise_error(Serializer::Error)
      expect { subject.try(Object.new) }.to raise_error(Serializer::Error)
    end
    
  end
  
end