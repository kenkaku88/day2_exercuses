require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
  # Navigate to URL
driver.get 'https://itmscoaching.herokuapp.com/form'
driver.manage.window.maximize
driver.find_element(:xpath, "//input[@id='first-name']").send_keys("iTMS")
driver.find_element(:xpath, "//input[@id='last-name']").send_keys("Coaching")
driver.find_element(:xpath, "//input[@id='job-title']").send_keys("QA")
#radiobutton
edu_radio = driver.find_element(:id, "radio-button-2")
edu_radio.click
#checkbox
sexcheckbox = driver.find_element(:id, "checkbox-1")
sexcheckbox.click
#drop_top_select
drop_top = Selenium::WebDriver::Support::Select.new(driver.find_element(:id, "select-menu"))
drop_top.select_by(:value, "2") 
insert_date = driver.find_element(:xpath, "//input[@id='datepicker']")
insert_date.send_keys("25/10/2025")
sleep 5
driver.find_element(:xpath, "//a[contains(text(),'Submit')]").click

#driver.navigate.refresh
title = driver.title
printf (title)
sleep 10
driver.quit