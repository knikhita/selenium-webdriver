require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :ff
driver.get "https://housing.com/in/buy/projects/page/12762-gauri-apartments-by-rui-universal-realities-in-baner?p=2%20BHK"
inputs = driver.find_elements(:xpath,"//input")
puts "Test pass for this case"
driver.quit()
