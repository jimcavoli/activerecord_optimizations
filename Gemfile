# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'active-record-profiler'
gem 'acts-as-taggable-on', '~> 6.0'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap', '~> 4.3.1'
gem 'coffee-rails', '~> 4.2'
gem 'devise', '~> 4.6', '>= 4.6.2'
gem 'faker', '~> 1.9', '>= 1.9.6'
gem 'flamegraph'
gem 'jquery-rails'
gem 'memory_profiler'
gem 'pg', '>= 0.18', '< 2.0'
gem 'pghero'
gem 'puma', '~> 3.11'
gem 'rack-mini-profiler'
gem 'rails', '~> 5.2.3'
gem 'sass-rails', '~> 5.0'
gem 'stackprof'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end
