require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'faker'
require 'rspec'
require 'site_prism'


World(Capybara::DSL)
World(Capybara::RSpecMatchers)


Capybara.configure do |config|
    config.default_driver = :selenium
    default_max_wait_time = 5
end

BROWSER = ENV['BROWSER']
ENV_TYPE = ENV['ENV_TYPE']

$sites = YAML.load_file("./features/support/#{ENV_TYPE}.yaml")['site']

Capybara.register_driver :selenium do |app|
    if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(
    app,
    :browser => :chrome,
    # :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
    #         'chromeOption' => {
    #             'args' => ['windows-size=1366,768']
    #         }
    #     )
    )
    elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(
        app,
        :browser => :firefox,
        :marionette => true
    )
    end
end