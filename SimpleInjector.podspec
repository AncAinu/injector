#
# Be sure to run `pod lib lint SimpleInjector.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SimpleInjector'
  s.version          = '1.0.2'
  s.summary          = 'A lightweight dependency injection mechanism in swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
SimpleInjector is a lightweight dependency injection mechanism written in Swift it carries your dependencies for you in a single object and deliver them where needed in one call.
                       DESC

  s.homepage         = 'https://github.com/AncAinu/Injector'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tancrede Chazallet' => 'tancredechazallet@gmail.com' }
  s.source           = { :git => 'https://github.com/AncAinu/Injector.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
	s.swift_versions = '5.4'

  s.source_files = 'Sources/injector/*'
end
