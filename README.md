# Serializer

Serializer is an interface to serialization mechanism interfaces. An interface interface.

## Install

### Bundler: `gem 'serializer'`

### RubyGems: `gem install serializer`

## Usage

Serializer currently supports JSON, and Marshal.

For JSON, Serializer utilizes MultiJson which selects the fastest available serializer for the job.

```ruby
require 'serializer'

serializer = Serializer.new(format: :json)

serializer.dump({:abc => 'def'}, :pretty => true) # => 
serializer.load('{"abc":"def"}')                  # => {"abc" => "def"}
```

## TODO

Change the serialization mechanism with the `format` method:

```ruby
serializer.format(:xml)

serializer.dump({:abc => 'def'})               # => '<h><m>abc</m><s>def</s></h>'
serializer.load('<h><m>abc</m><s>def</s></h>') # => { :abc => "def" }
```

You can also change the engine with the `engine` method:

```ruby
serializer.format(:xml)
serializer.engine(:nokogiri)

serializer.dump({:abc => 'def'})               # => '<h><m>abc</m><s>def</s></h>' # Nokogiri has no "hash to xml", so we fallback to Ox
serializer.load('<h><m>abc</m><s>def</s></h>') # => #<Nokogiri::Document ... >
```

## Copyright

Copyright © 2013 Ryan Scott Lewis <ryan@rynet.us>.

The MIT License (MIT) - See LICENSE for further details.
