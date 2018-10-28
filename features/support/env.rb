require 'cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'page-object'
require 'webdrivers'

caps = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { args: [ "--headless" ]})

Before do
  @browser = Selenium::WebDriver.for :chrome
  @google_search = GoogleSearch.new(@browser)
end

After do
  @browser.quit
end