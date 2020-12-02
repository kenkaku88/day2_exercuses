require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
  # Navigate to URL
driver.get 'https://google.com'
driver.manage.window.maximize
driver.find_element(:name, "q").send_keys("iTMS Coaching")
#driver.navigate.refresh
title = driver.title
printf (title)
sleep 5
driver.quit