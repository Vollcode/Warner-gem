Gem::Specification.new do |s|
  s.name        = 'api_warner'
  s.version     = '0.0.1'
  s.executables = ['warner']
  s.date        = '2016-07-15'
  s.summary     = "Api Warner!"
  s.add_runtime_dependency "ptools", ["= 1.3.3"]
  s.description = "A simple gem to warn you if there is a string similar to an API key in any of your ruby files. As of now, it cannot read binary files and it gives trouble when dealing with files written in other languages."
  s.authors     = ["Daniel Ortiz"]
  s.email       = 'dan@test.not'
  s.files       = ["lib/warner.rb"]
  s.homepage    =
    'http://rubygems.org/gems/api_warner'
  s.license       = 'MIT'
end
