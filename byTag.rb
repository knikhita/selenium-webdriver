require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
#wait = Selenium::WebDriver::Wait.new(:timeout,'10')

driver.get "https://housing.com/in/buy/mumbai/andheri_east"

element = driver.find_element(:tag_name,'iframe')   
#.send_keys("Mumbai")
puts "Test Case for locator by Tag name is passes for #{driver.title}"
driver.quit