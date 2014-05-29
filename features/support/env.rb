require 'rubygems'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'win32ole'
require 'singleton'
require 'CSV'
require 'java'
require 'sikuli'
require 'watir-webdriver'

java_import "org.sikuli.script.SikuliScript"
java_import "org.sikuli.script.Region"
java_import "org.sikuli.script.Screen"

Before do |scenario|
   page.driver.browser.manage.window.maximize
end

def initialize
 @screen = Sikuli::Screen.new
 @script = org.sikuli.script.SikuliScript.new
end

def follow_link_to(name)
@screen.click "#{name}.png"
end

def verify_underlined_link_to(name)
@screen.find "#{name.downcase}-underlined.png"
end

Sikuli::Config.run do |config|
  config.image_path = "C:/Cucumber/ruby-capybara/ruby-capybara/features/Images"
  config.logging = false
  config.highlight_on_find = true
end

Capybara.register_driver :selenium do |app_host|
  $download_directory = "C:\\drakerfile"
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile['browser.download.folderList'] = 2 #custom location
  profile['browser.download.dir'] =   "C:\\drakerfile"
  profile['browser.helperApps.neverAsk.saveToDisk'] = "text/csv" # content-type of file that will be downloaded
  Capybara::Selenium::Driver.new(app_host, :browser => :firefox, profile: profile)
  #b = Watir::Browser.new :firefox, :profile => profile
end


module Capybara
  module Node
    class Element
      def hover
        @session.driver.browser.action.move_to(self.native).perform
      end
    end
  end
end

module SessionSteps
  def login(username , password)
    visit "/"
    fill_in 'username', :with =>username
    fill_in 'password', :with =>password
    click_on "Login"
    sleep 3
    visit(current_path)
    sleep 5
  end
end

module Capybaradisable
  def enable_fields(*fields)
    fields.each do |field|
      page.find_field(field).base.native.remove_attribute("disabled")
    end
  end
end


module Datasvcauth
	def datasvc_auth(username,password)
		visit("http://#{username}:#{password}@data.stage.intelligentarray.com/")
 		sleep 20
	end
end


module Downloadpath
	def download_dir(downpath)
		"#{downpath}"
	end
end

	module GlobalVar
	   def var_access()
	      $download_directory = "C:\\drakerfile"
	    end
	end  
	

World(GlobalVar)
World(Downloadpath)
World(Datasvcauth)
World(Capybara::Node)
World(SessionSteps)
World(Capybaradisable)

After do |scenario|
  if(scenario.failed?)
    page.driver.browser.save_screenshot("html-report/#{scenario.__id__}.png")
    embed("#{scenario.__id__}.png", "image/png", "SCREENSHOT")
  end
end
Capybara.default_driver = :selenium
Capybara.app_host = "https://app.intelligentarray.com/login"
#Capybara.ignore_hidden_elements = false