require 'rubygems'
require 'selenium-webdriver'
 
browser = Selenium::WebDriver.for :ff

browser.get "http://www.google.com"
input = browser.find_element(:name,'q')
input.send_keys('aspyct')
browser.manage.timeouts.implicit_wait = 10 # seconds
button = browser.find_element(:name,'btnG')
button.click

#wait = Selenium::WebDriver::Wait.new(:timeout,'10')

link = browser.find_element(:link_text,'Aspyct.org')
link.click

browser.title
browser.find_element(:xpath,'//h1').text
browser.quit()
