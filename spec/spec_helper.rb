require 'bundler/setup'
require 'serializer'
require 'mocha/api'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.mock_with :mocha
  config.order = 'random'
end
