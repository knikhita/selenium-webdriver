require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get "http://housing.com"

element = driver.find_element(:id,"main-content")
puts "Test passed for ID Locator of #{driver.title}"
driver.quit