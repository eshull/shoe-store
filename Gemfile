# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }


gem("sinatra-contrib", :require => "sinatra/reloader")
gem("sinatra-activerecord")
gem("rake")
gem("pg")
gem("sinatra")
gem 'thin'
gem 'money'

group(:test) do
  gem("rspec")
  gem("capybara")
  gem("pry")
  gem("shoulda-matchers", '~> 2.0')
end
