require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

Capybara.default_driver =:selenium
Capybara.javascript_driver = :webkit




Given(/^I am truedx$/) do 

print "=========" 
 @home = HomePage.new
  @home.load
  #p "=========" +  @home.displayed?
  #@home.displayed?
end

When /^I enter$/ do 
  @home.search_field.set 'support.amcast'
  @home.search_field1.set 'redamon'
 # @home.search_button.click
end

When /^I Click on the submit$/ do 
 @home.search_button.click
end


When /^Prueba$/ do
 @home.users
 end
 When /^I press "([^"]*)"$/ do |users|
     p "asdassdasdasd"
    # @home.me

   @home.me2(users)
   @home.clicka
  sleep(5)

end







