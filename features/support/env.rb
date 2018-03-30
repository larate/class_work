require "selenium-webdriver"
require "rspec"

Before do
driver_path = File.join(File.dirname(__FILE__), "..", "..", "drivers","chromedriver.exe")
@browser = Selenium::WebDriver.for :chrome, driver_path: driver_path
@browser.manage.timeouts.implicit_wait = 10
@browser.manage.timeouts.implicit_wait = 10
end

After do
  @browther.quit
end