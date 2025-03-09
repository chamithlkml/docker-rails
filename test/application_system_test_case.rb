require "test_helper"
require "socket"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  setup do
    Capybara.server_host = "0.0.0.0" # bind to all interfaces
    Capybara.app_host = "http://#{IPSocket.getaddress(Socket.gethostname)}"
  end

  # url = ENV.fetch("SELENIUM_REMOTE_URL", "http://chrome:4444/wd/hub")
  # options = Selenium::WebDriver::Chrome::Options.new
  # options.add_argument('no-sandbox')
  # options.add_argument('headless')
  # options.add_argument('disable-gpu')
  # options.add_argument('window-size=1400,1400')

  # driven_by :selenium, using: :chrome, screen_size: [1400, 1400], options: {url: "http://chrome:4444/wd/hub"}
  # ENV.fetch("SELENIUM_REMOTE_URL", "http://chrome:4444/wd/hub")
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400], options: { browser: :remote, url: "http://chrome:4444/wd/hub"} do |driver_options|
    driver_options.browser_name = 'chrome'
    driver_options.add_argument('no-sandbox')
    driver_options.add_argument('headless')
    driver_options.add_argument('disable-gpu')
    driver_options.add_argument('window-size=1400,1400')
  end
end
