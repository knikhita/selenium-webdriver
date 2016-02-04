require 'selenium-webdriver'

define "Selenium Recipes - Start different browsers" do
it "Start Chrome" do
driver = Selenium::WebDriver.for(:chrome)
driver.navigate.to("http://travel.agileway.net")
sleep 1
driver.quit
end
it "Start FireFox" do
driver = Selenium::WebDriver.for(:firefox)
driver.navigate.to("http://travel.agileway.net")
expect(driver.title).to eq("Agile Travel")
sleep 1
driver.quit
end
it "Start IE" do
driver = Selenium::WebDriver.for(:ie)
driver.get("http://travel.agileway.net")
sleep 1
expect(driver.page_source).to include("User Name")
driver.quit
end
end