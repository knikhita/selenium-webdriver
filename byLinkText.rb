require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :ff

#wait for 10 sec

driver.manage.timeouts.implicit_wait = 10 

driver.navigate.to "https://housing.com/in/buy/mumbai/mumbai"

element = driver.find_element(:link_text,'Avant Heritage')
puts "Test Case passed for #{driver.title}"
driver.quit
