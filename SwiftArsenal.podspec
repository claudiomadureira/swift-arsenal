#
# Be sure to run `pod lib lint Arsenal.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftArsenal'
  s.version          = '0.1.2'
  s.summary          = 'Small but very common algorithms among any project.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Looking forward to gather in a single space all the small but very common algorithms among any project I've been working on, this repo goes beyond that by sharing these tools with any other Swift developer.
                       DESC

  s.homepage         = 'https://github.com/claudiomadureira/swift-arsenal'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'claudiomadureira' => 'claudiomsilvaf@gmail.com' }
  s.source           = { :git => 'https://github.com/claudiomadureira/swift-arsenal.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.swift_version = '5.0'

  s.source_files = 'Arsenal/Classes/**/*'

end
