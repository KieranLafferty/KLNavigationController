#
# Be sure to run `pod spec lint OnTab.podspec' to ensure this is a
# valid spec.
#
# Remove all comments before submitting the spec. Optional attributes are commented.
#
# For details see: https://github.com/CocoaPods/CocoaPods/wiki/The-podspec-format
#
Pod::Spec.new do |s|
  s.name         = "KLNavigationController"
  s.version      = "1.0.0"
  s.homepage	 = "google.com"
  s.summary      = "A UINavigationController subclass that allows root view controller to be modified after initialization"
  s.license      = 'BSD'
  s.author       = { "Kieran" => "kieran.lafferty@gmail.com" }
  s.source       = { :git => "https://github.com/KieranLafferty/KLNavigationController.git"}
  s.documentation = {}
  s.platform     = :ios, '5.0'
  s.requires_arc = true
  s.source_files = 'KLNavigationController', 'KLNavigationController/**/*.{h,m}'
end
