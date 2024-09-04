require 'capybara/cucumber'
require 'cucumber'
require 'capybara'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require_relative 'page_helper.rb'
require_relative 'helper.rb'

BROWSER = ENV['BROWSER']
AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}homolog.yml")

World(PageObjects)
World(Helper)

# Configuração do Selenium e Capybara
Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app,
    browser: :chrome,
    options: Selenium::WebDriver::Chrome::Options.new.tap do |opts|
      opts.add_argument('--disable-gpu')
      opts.add_argument('--no-sandbox')
      opts.add_argument('--window-size=1280x1024') # Define o tamanho da janela
      opts.add_argument('--disable-dev-shm-usage') # Pode ajudar a resolver problemas de compartilhamento de memória
      opts.add_argument('--remote-debugging-port=9222') # Habilita a depuração remota
    end
  )
end

# Configura o driver padrão após o registro
Capybara.default_driver = :selenium_chrome
Capybara.javascript_driver = :selenium_chrome
Capybara.default_max_wait_time = 10
Capybara.app_host = 'http://localhost:3000'

# Caminho do driver do Chrome
Selenium::WebDriver::Chrome::Service.driver_path = "C:/Users/guilh/Desktop/Aprendizado-de-Testes-Automatizados-/cucumber-testes/tests/features/support/chromedriver.exe"
