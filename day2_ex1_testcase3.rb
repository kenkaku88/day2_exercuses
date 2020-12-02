require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
  # Navigate to URL
driver.get 'https://google.com'
driver.manage.window.maximize
driver.navigate.refresh
driver.title
printf driver.title
sleep 15
driver.quit