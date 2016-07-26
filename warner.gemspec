Gem::Specification.new do |s|
  s.name        = 'api_warner'
  s.version     = '0.0.2'
  s.executables = ['warner']
  s.date        = '2016-07-25'
  s.summary     = "Api Warner!"
  s.add_runtime_dependency "ptools", ["= 1.3.3"]
  s.description = "A simple gem to warn you if there is a string similar to an API key in any of your ruby files. As of now, it cannot read binary files and it gives trouble when dealing with files written in other languages. Just run 'warner' without the quotes in your working directory and it will search in that folder an every child of it for a string that looks like an API key"
  s.authors     = ["Daniel Ortiz"]
  s.email       = 'dan@test.not'
  s.files       = ["lib/warner.rb"]
  s.homepage    =
    'http://rubygems.org/gems/api_warner'
  s.license       = 'MIT'
end
