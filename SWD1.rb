require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

wait = Selenium::WebDriver::Wait.new(:timeout => 30)

driver.navigate.to "file:///Users/nikhita/Desktop/RUBYTESTS/Practices/TEST.html"
driver.get "file:///Users/nikhita/Desktop/RUBYTESTS/Practices/TEST.html"

#wait = Selenium::WebDriver::Wait.new(:timeout => 30)
puts "Test Passed" if wait.until{ driver.find_element(:id => '2')}
#element = element.displayed?


#element = wait.until{ driver.find_element(:id => '1')}
#driver.quit
