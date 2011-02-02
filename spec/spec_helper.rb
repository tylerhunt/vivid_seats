$:.unshift(File.expand_path('../../lib', __FILE__))

ENV['VIVID_ACCESS_ID'] ||= 'test'

require 'rspec'
require 'vivid_seats'

# Requires supporting files with custom matchers and macros, etc.,
# in ./support/ and its subdirectories.
Dir[File.expand_path('../support/**/*.rb', __FILE__)].each do |file|
  require(file)
end

RSpec.configure do |config|
  config.mock_with :rspec
end
