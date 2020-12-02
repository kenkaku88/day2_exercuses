require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
  # Navigate to URL
driver.get 'https://google.com'
driver.manage.window.maximize
driver.navigate.refresh
driver.page_source
print driver.page_source
sleep 15
driver.quit