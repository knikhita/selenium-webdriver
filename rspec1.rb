require 'rubygems'
require 'selenium-webdriver'
require 'rspec'

describe "Housing.com Home Search" do 

	before(:each) do

    @driver = Selenium::WebDriver.for :ff
    @base_url = "https://google.com"
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
	end

 after(:each) do
    @driver.quit
 end

it "Search text on search placeholder" do

    @driver.get(@base_url + "/")
    @driver.find_element(:id, "gbqfq").clear
    @driver.find_element(:id, "gbqfq").send_keys "testing"
    @driver.find_element(:id, "gbqfb").click
  
end
	
end