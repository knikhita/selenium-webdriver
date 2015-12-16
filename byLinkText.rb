require 'rubygems'
require 'selenium-webdriver'

driver = Sekenium::WebDriver.for :ie

#wait for 10 sec

wait = Selenium::WebDriver::Wait.new(:timeout,'10')

driver.navigate.to "https://housing.com/in/buy/mumbai/mumbai"
element = driver.find_element(:link_text,'properties_in_mumbai')
puts "Test Case passed for #{driver.title}"
driver.quit
