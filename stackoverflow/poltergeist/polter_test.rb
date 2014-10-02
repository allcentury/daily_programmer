require 'capybara'
require 'capybara/poltergeist'
require 'pry'

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, phantomjs_options: ['--ssl-protocol=any'])
end

session = Capybara::Session.new(:poltergeist)
binding.pry
session.visit("https://www.tumblr.com")
