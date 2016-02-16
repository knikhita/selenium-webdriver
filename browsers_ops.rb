require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :ff
driver.get "http://google.com"
driver.find_element(name: "q")
driver.find_element(name: "q").send_keys "housing.com"
driver.navigate.to "https://housing.com"
driver.manage.timeouts.implicit_wait = 50 
driver.get "https://housing.com/in/buy/mumbai/andheri_east"
driver.manage.timeouts.implicit_wait = 100 
driver.navigate().back();
driver.manage.timeouts.implicit_wait = 100 
#wait = Selenium::WebDriver::Wait.new(:timeout => 10) #explicit wait
driver.navigate().forward();
puts "Test Case passed browser's operations"

driver.quit()

