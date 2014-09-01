# Note: To test this spec locally, put the following in your podfile
# pod 'Parse-iOS-SDK', :podspec => '~/PATH/TO/Parse-iOS-SDK.podspec'
# If you want to be a co-owner, please contact me at https://github.com/hlung

Pod::Spec.new do |s|
  s.name         = "Parse-iOS-SDK"
  s.version      = "1.2.21"
  s.summary      = "Parse is a complete technology stack to power your app's backend."
  s.homepage     = "http://www.parse.com"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "Commercial", :text => "See https://parse.com/about/terms" }
  s.author       = "Parse, podspec by https://github.com/hlung"
  s.platform     = :ios, "6.0"

  s.source       = { :http => "http://parse-ios.s3.amazonaws.com/f1992e7a501affcc1906429e3690bae5/parse-library-1.2.21.zip" }
  s.public_header_files = "Parse.framework/**/*.h"
  s.vendored_frameworks = "Parse.framework"
  s.preserve_paths = "Parse.framework"

  s.frameworks = "AudioToolbox", "CFNetwork", "CoreGraphics", "CoreLocation", "MobileCoreServices", "QuartzCore", "Security", "StoreKit", "SystemConfiguration"

  s.weak_frameworks = "Accounts", "AdSupport", "Social"
  s.libraries = "z", "sqlite3"

  s.requires_arc = true
  s.dependency "Facebook-iOS-SDK", "~> 3.7"
  s.dependency "Bolts"
end
