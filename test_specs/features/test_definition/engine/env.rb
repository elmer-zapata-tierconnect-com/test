require 'selenium-webdriver'
require 'capybara/cucumber'
require 'rspec/expectations'


Capybara.default_driver = :selenium


Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.javascript_driver = :chrome