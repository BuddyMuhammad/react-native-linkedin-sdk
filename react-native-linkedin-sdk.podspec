require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name        = 'react-native-linkedin-sdk'
  s.version     = package['version']
  s.summary     = package['description']
  s.homepage    = package['homepage']
  s.license     = package['license']
  s.author      = 'Muhammad Asif'
  s.platform    = :ios, "12.0"
  s.source      = { :git => "https://github.com/BuddyMuhammad/react-native-linkedin-sdk.git", :tag => "#{s.version}" }

  s.source_files  = "ios/*.{h,m}"

  s.dependency "React"
  s.dependency "TwitterKit5"
end
