require 'rubygems'
require 'selenium-webdriver'
 
browser = Selenium::WebDriver.for :ff
browser.get "http://www.google.com"
input = browser.find_element(:id,'gbqfq')
input.send_keys('aspyct')
button = browser.find_element(:id,'gbqfb')
button.click

link = browser.find_element(:link,'Aspyct.org')
link.click

browser.title
browser.find_element(:xpath,'\header\hgroup\h1').text
browser.quit()
