Gem::Specification.new do |s|
  s.name        = 'fig2coreos'
  s.version     = '0.1.6'
  s.date        = '2014-04-24'
  s.summary     = "Convert fig to coreos formatted configuration files"
  s.description = "Convert fig to coreos formatted configuration files"
  s.authors     = ["Lucas Carlson"]
  s.email       = 'lucas@rufy.com'
  s.files       = ["lib/fig2coreos.rb","bin/fig2coreos"]
  s.homepage    = 'http://github.com/CenturyLinkLabs/fig2coreos'
  s.license     = 'MIT'
  s.executables << 'fig2coreos'
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-nc"
  s.add_development_dependency "guard"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "pry"
  s.add_development_dependency "pry-remote"
  s.add_development_dependency "pry-nav"
end
