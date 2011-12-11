# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_zipzones_070'
  s.version     = '0.1.2'
  s.summary     = 'Enables zipcode zones.'
  s.description = 'Adds zipcode functionality equivalent to that of states. Used for the Spree eCommerce framework.'
  s.required_ruby_version = '>= 1.8.7'

   s.author            = 'Cameron Carroll'
   s.email             = 'ckcarroll4@gmail.com'
  # s.homepage          = 'http://www.rubyonrails.org'
  # s.rubyforge_project = 'actionmailer'

  #s.files         = `git ls-files`.split("\n")
  #s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 0.70.X'
  s.add_development_dependency 'rspec-rails'
end

