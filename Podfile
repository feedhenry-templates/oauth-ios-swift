source 'https://github.com/CocoaPods/Specs.git'

project 'oauth-ios-swift.xcodeproj'
platform :ios, '8.0'
use_frameworks!

target 'oauth-ios-swift' do
	pod 'FeedHenry', :git => 'https://github.com/jcesarmobile/fh-ios-swift-sdk', :branch => 'RHMAP-10096'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '2.3'
    end
  end
end
