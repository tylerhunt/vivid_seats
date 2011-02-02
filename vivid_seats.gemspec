Gem::Specification.new do |gem|
  gem.name = 'vivid_seats'
  gem.version = '0.0.1'
  gem.summary = 'An interface library for the Vivid Seats web service.'
  gem.homepage = %q{http://github.com/tylerhunt/vivid_seats}
  gem.authors = ['Tyler Hunt']

  gem.files = Dir['LICENSE', 'lib/**/*']
  gem.add_dependency 'httparty', '0.6.1'
  gem.add_dependency 'json', '~> 1.4.6'
  gem.add_development_dependency 'rspec', '2.3.0'
  gem.add_development_dependency 'vcr', '1.4.0'
  gem.add_development_dependency 'webmock', '1.6.1'
end
