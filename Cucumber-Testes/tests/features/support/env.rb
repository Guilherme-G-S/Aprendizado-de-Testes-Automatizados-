require 'cucumber'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
  #selenium         selenium_chrome     selenium_chrome_healess
  config.default_driver = :selenium_chrome
  config.app_host = 'http://localhost:3000'
  config.default_max_wait_time = 5
end

Selenium::WebDriver::Chrome::Service.driver_path = "C:/Users/guigomsilva/OneDrive - rd.com.br/Área de Trabalho/RUBYTESTES/Cucumber-Testes/tests/features/support/chromedriver.exe"
Capybara.page.driver.browser.manage.window.maximize
