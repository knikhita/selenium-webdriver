require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

driver.navigate.to "https://housing.com/in/buy/mumbai/mumbai"

#wait = Selenium::WebDriver::Wait.new(:timeout,"20")

driver.get "https://housing.com/in/buy/mumbai/andheri_east"


driver.manage.timeouts.implicit_wait = 50
#wait = Selenium::WebDriver::Wait.new(:timeout => 100) #explicit wait
#wait = Selenium::WebDriver::Wait.new(:timeout,"20")



element = driver.find_element(:class_name,"buy-service")
#element = driver.find_element(:class,"buy-service")

puts "Test passed for Class Name Locator of #{driver.title}"
driver.quit