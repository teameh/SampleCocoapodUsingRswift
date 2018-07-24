#
# Be sure to run `pod lib lint SampleCocoapod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SampleCocoapodUsingRSwift'
  s.version          = '0.1.0'
  s.summary          = 'Cocoapod using R.swift'
  s.homepage         = 'https://github.com/teameh/SampleCocoapodUsingRSwift'
  s.license          = { :type => 'MIT', :text => 'MIT LICENSE' }
  s.author           = { 'Tieme van Veen' => 'tiemevanveen@hotmail.com' }
  s.source           = { :git => 'https://github.com/teameh/SampleCocoapodUsingRSwift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'lib/Classes/**/*'
  s.resources = 'lib/Assets/**/*'

  # Cocoapods This won't work with R.swift..
  #s.resource_bundles = {
  #  'Localization' => ['lib/Assets/**/*.lproj']
  #}

  s.dependency 'R.swift'

  # Needed when this pod is included in sample app
  s.script_phases = [{
     :name => 'R',
     :script => '"$SRCROOT/R.swift/rswift" generate "$SRCROOT/../../lib/Classes/"',
     :execution_position => :before_compile
  }]

  # Needed when this pod is included in other App
  # s.script_phases = [{
  #   :name => 'R',
  #   :script => '"$SRCROOT/R.swift/rswift" generate "$SRCROOT/SampleCocoapodUsingRSwift/lib/Classes/"',
  #   :execution_position => :before_compile
  #}]
end
