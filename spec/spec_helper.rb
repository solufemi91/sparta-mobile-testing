require 'pry'
require 'appium_lib'
RSpec.configure do |config|
  config.formatter = :documentation
end
def opts
  {
    caps: {
      platformName: "Android",
      deviceName: "emulator-5554",
      app: "/Users/Tech-A18/engineering/sparta-mobile-testing/native1/app/budgetwatch.apk"
    }
  }
end
