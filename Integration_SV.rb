require 'rubygems'
require 'selenium-webdriver'
require 'cappibara'
require 'spec_helper'

describe "WebApiTestSuite1" do

it "200:validates the response with negative id from webapp" do
 			expect_ok_for_web('/api/v1/new-projects/-5/webapp',true)

 		end