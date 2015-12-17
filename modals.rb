require 'rubygems'
require 'selenium-webdriver'
require 'watir-webdriver'
 
 driver = Selenium::WebDriver.for :firefox
 driver.navigate.to "https://housing.com/in/buy/projects/page/9552-spring-view-heights-by-sare-homes-in-lal-kuan"

 #wait = Selenium::Webdriver::Wait.new (:timeout => 20)
