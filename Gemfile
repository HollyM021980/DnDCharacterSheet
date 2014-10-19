source 'https://rubygems.org'

ruby '2.1.2'

gem 'rails', '4.2.0.beta2'
gem 'pg'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails', '~> 4.0.0.beta2'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'devise'
gem 'best_in_place', github: 'aaronchi/best_in_place'

group :production do
  gem 'rails_12factor', group: :production
end

group :development, :test do
  gem 'spring', group: :development
  gem 'pry-rails', group: [:development, :test]
  gem 'pry-byebug', group: [:development, :test]
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end
