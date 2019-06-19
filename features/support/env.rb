require 'capybara/dsl'
require 'cucumber'
require 'faker'
require 'httparty'
require 'pry'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'

World Capybara::DSL

BROWSER = ENV['BROWSER'] || 'chrome'
HEADLESS = ENV['HEADLESS'] || false

Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome') && !HEADLESS

    capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
      chromeOptions: { args: %w[window-size=1366,768] }
    )
    Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: capabilities)

  elsif BROWSER.eql?('firefox') && !HEADLESS
    browser_options = Selenium::WebDriver::Firefox::Options.new
    browser_options.add_argument("--width=1900");
    browser_options.add_argument("--height=1080");
    Capybara::Selenium::Driver.new(app, browser: :firefox, options: browser_options)

  elsif BROWSER.eql?('chrome') && HEADLESS
    capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
      chromeOptions: { args: %w[headless disable-gpu no-sandbox window-size=1366,768] }
    )
    Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: capabilities)

  elsif BROWSER.eql?('firefox') && HEADLESS
    browser_options = Selenium::WebDriver::Firefox::Options.new
    browser_options.add_argument('--headless')
    browser_options.add_argument('--width=1900')
    browser_options.add_argument('--height=1080')
    Capybara::Selenium::Driver.new(app, browser: :firefox, options: browser_options)

  elsif BROWSER.eql?('chrome_remote')
    Capybara::Selenium::Driver.new(app,
      :browser => :remote,
      :desired_capabilities => :chrome,
      :url => 'http://localhost:4444/wd/hub')

  elsif BROWSER.eql?('firefox_remote')
    Capybara::Selenium::Driver.new(app,
      :browser => :remote,
      :desired_capabilities => :firefox,
      :url => 'http://localhost:4444/wd/hub')
  end
end

Capybara.configure do |config|
  Capybara.current_driver = :selenium
  config.default_max_wait_time = 5
end
