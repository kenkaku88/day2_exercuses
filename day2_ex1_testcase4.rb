require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
  # Navigate to URL
driver.get 'https://google.com'
driver.manage.window.maximize
driver.navigate.refresh
cur_ulr = driver.current_url
print (cur_ulr)
sleep 15
driver.quit