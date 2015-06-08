require 'watir-webdriver'
require 'page-object'


Before do
  #@browser = Watir::Browser.new :firefox
  #@browser = Selenium::WebDriver.for :chrome
  @browser = Watir::Browser.new :chrome, :switches => %w[ --disable-extensions --disable-popup-blocking]
end

After do
   @browser.close
end

=begin
After do |scenario|
  begin
    if scenario.failed?
      Dir::mkdir('screenshots') if not File.directory?('screenshots')
      screenshot = "./screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
      @browser.driver.save_screenshot(screenshot)
      embed screenshot, 'image/png'
    end
    ensure
    @browser.close
  end
end
=end