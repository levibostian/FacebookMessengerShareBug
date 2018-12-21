source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '10.0'
use_frameworks!

# ignore all warnings from all pods
inhibit_all_warnings!

target 'FacebookMessengerShareBug' do
  facebookVersion = "0.5.0"
  pod 'FacebookCore', "~> #{facebookVersion}"
  pod 'FacebookLogin', "~> #{facebookVersion}"
  pod 'FacebookShare', "~> #{facebookVersion}"
  # Below temp solution to facebook login bug. https://github.com/facebook/facebook-swift-sdk/issues/298#issuecomment-446363978
  pod 'FBSDKCoreKit', :git => 'https://github.com/facebook/facebook-objc-sdk.git', :branch => 'master'
end